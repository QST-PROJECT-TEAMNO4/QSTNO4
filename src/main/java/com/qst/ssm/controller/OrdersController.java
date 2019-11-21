package com.qst.ssm.controller;

import com.qst.ssm.entity.Member;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.entity.Traveller;
import com.qst.ssm.service.IMemberService;
import com.qst.ssm.service.IOrderService;
import com.qst.ssm.service.ITravellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private IOrderService orderService;

    @Autowired
    private IMemberService memberService;

    @Autowired
    private ITravellerService travellerService;

    /**
     * 订单管理信息
     * @return
     */
    @RequestMapping("/queryOrders")
    public ModelAndView queryOrders1() {
        ModelAndView mv = new ModelAndView();
        List<Map<String,Object>> or=orderService.queryOrders1();
        mv.addObject("ordersList",or);
        mv.setViewName("orders-list");
        return mv;
    }

    /**
     * 根据ID查询订单信息
     * @param Id
     * @return
     */
    @RequestMapping("/getOrders")
    public ModelAndView getOrders(int Id){
        ModelAndView mv=new ModelAndView();
        Orders orders=orderService.getOrders(Id);
        mv.addObject("orders",orders);
        mv.setViewName("orders-update");
        return mv;
    }

    /**
     * 订单详情信息
     * @return
     */
    @RequestMapping("/findById")
    public ModelAndView particulars(int Id){
        ModelAndView mv=new ModelAndView();
        Map<String,Object> op=orderService.getOrdersProduct(Id);
        System.out.println(op);
        Member member=memberService.getOrdersMember(Id);
        System.out.println(member);
        Traveller traveller=travellerService.getOrdersTraveller(Id);
        System.out.println(traveller);
        mv.addObject("ordersProduct",op);
        mv.addObject("member",member);
        mv.addObject("traveller",traveller);
        mv.setViewName("orders-show");
        System.out.println(mv);
        return mv;
    }

    /**
     * 删除订单信息
     * @return
     */
    @RequestMapping("/deleteOrders")
    @ResponseBody
    public ModelAndView deleteOrders(int Id){
        int rows=orderService.deleteOrders(Id);
        if (rows==1){
            return this.queryOrders1();
        }else {
            return this.queryOrders1();
        }

    }

    /**
     * 修改订单信息
     * @param orders
     * @return
     */
    @RequestMapping("/updateOrders")
    public String updateOrders(Orders orders){
        int rows=orderService.updateOrders(orders);
        if (rows==1){
            System.out.println("修改成功");
            return "redirect:queryOrders";
        }else {
            System.out.println("修改失败");

            return "redirect:getOrders";
        }
    }

    @RequestMapping("/insertOrders")
    public String insertOrders(Orders orders){
        int rows=orderService.insertOrders(orders);
        if (rows==1){
            return "redirect:queryOrders";
        }else {
            return "redirect:queryOrders";
        }
    }



}
