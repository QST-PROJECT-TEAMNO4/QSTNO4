package com.qst.ssm.controller;

import com.qst.ssm.entity.Orders;
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private IOrderService orderService;

    @RequestMapping("/queryOrders")
    public ModelAndView queryOrders1() {
        ModelAndView mv = new ModelAndView();
        List<Map<String,Object>> or=orderService.queryOrders1();
        mv.addObject("ordersList",or);
        mv.setViewName("orders-list");
        return mv;
    }

    @RequestMapping("/findById")
    public ModelAndView particulars(){
        ModelAndView mv=new ModelAndView();
        List<Map<String,Object>> pa=orderService.queryOrders1();
        mv.addObject("",pa);
        mv.setViewName("orders-show");
        return mv;
    }

}
