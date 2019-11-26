package com.qst.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.qst.ssm.entity.Member;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.entity.Traveller;
import com.qst.ssm.service.IMemberService;
import com.qst.ssm.service.IOrderService;
import com.qst.ssm.service.ITravellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public ModelAndView queryOrdersProduct(@RequestParam(name = "page",required = true,defaultValue = "1") int page,
                                           @RequestParam(name = "size",required = true,defaultValue = "10") int size) {
        ModelAndView mv = new ModelAndView();
        List<Map<String,Object>> or=orderService.queryOrdersProduct(page,size);
        PageInfo pageInfo=new PageInfo(or);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("orders-list");
        System.out.println("*************"+mv);
        return mv;
    }

    /**
     * 订单管理信息
     * @return
     */
    @RequestMapping("/CusQueryOrders")
    public ModelAndView CusQueryOrders(@RequestParam(name = "page",required = true,defaultValue = "1") int page,
                                           @RequestParam(name = "size",required = true,defaultValue = "10") int size,
                                       int Id) {
        ModelAndView mv = new ModelAndView();
        List<Map<String,Object>> cusQueryOrders=orderService.CusQueryOrders(page,size,Id);
        PageInfo pageInfo=new PageInfo(cusQueryOrders);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("cus-orders");
        System.out.println("*************"+mv);
        return mv;
    }

    /**
     * 根据产品名称模糊查询订单-产品信息
     * @param page
     * @param size
     * @param Keyword
     * @return
     */
    @RequestMapping("/OPFallAllLike")
    public ModelAndView OPFallAllLike(@RequestParam(name = "page",required = true,defaultValue = "1")int page,
                                      @RequestParam(name = "size",required = true,defaultValue = "10") int size, String Keyword){
        ModelAndView mv=new ModelAndView();
        List<Map<String,Object>> mapList=orderService.OPFallAllLike(page,size,Keyword);
        PageInfo pageInfo=new PageInfo(mapList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("orders-list");
        System.out.println(mv);
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
        System.out.println(mv);
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
        Member member=memberService.getOrdersMember(Id);
        Traveller traveller=travellerService.getOrdersTraveller(Id);
        mv.addObject("ordersProduct",op);
        mv.addObject("member",member);
        mv.addObject("traveller",traveller);
        mv.setViewName("orders-show");

        return mv;
    }

    /**
     * 删除订单信息
     * @return
     */
    @RequestMapping("/deleteOrders")
    @ResponseBody
    public String deleteOrders(int Id){
        int rows=orderService.deleteOrders(Id);
        if (rows==1){
            return "redirect:queryOrders";
        }else {
            return "redirect:queryOrders"+rows;
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

    /**
     * 添加订单信息
     * @param orders
     * @return
     */
    @RequestMapping("/insertOrders")
    public String insertOrders(Orders orders){
        int rows=orderService.insertOrders(orders);
        System.out.println("**********************"+orders.getOrderNum());
        if (rows==1){
            return "redirect:orderInfo?orderNum="+orders.getOrderNum();
        }else {
            return "redirect:queryOrders";
        }
    }

    @RequestMapping("/updateOrdersStatus")
    public String updateOrdersStatus(int Id){
        int rows=orderService.updateOrdersStatus(Id);
        if (rows==1){
            return "paySuccess";
        }else {
            return "redirect:queryOrders";
        }
    }

    @RequestMapping("/orderInfo")
    public ModelAndView OPFallAllLike(String orderNum){
        ModelAndView mv=new ModelAndView();
        Map<String,Object> infoList=orderService.orderInfo(orderNum);
        mv.addObject("infoList",infoList);
        mv.setViewName("order-info");
        System.out.println(mv);
        return mv;
    }

    /**
     * 修改旅客信息
     * @param traveller
     * @return
     */
    /*@RequestMapping("/updateTraveller")
    public String updateTraveller(Traveller traveller){
        int rows=travellerService.updateTraveller(traveller);
        if (rows==1){
            return "redirect:queryOrders";
        }else {
            return "redirect:queryOrders";
        }
    }*/


}
