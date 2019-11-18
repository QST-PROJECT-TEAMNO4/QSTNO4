package com.sqt.ssm.test;

import com.qst.ssm.entity.Orders;
import com.qst.ssm.service.IOrderService;
import org.junit.Test;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TestOrders {
    /**
     * 测试查询所有订单表
     */
    @Test
    public void testOrdersQuery(){
        AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        IOrderService OrderService=(IOrderService) context.getBean("ordersService");
        List<Orders> ordersList = OrderService.queryOrders();
        if (!ordersList.isEmpty()){
            for (Orders orders:ordersList){
                System.out.println(orders);
            }
        }
        context.close();
    }
    @Test
    public void testGetOrders(){
        AbstractXmlApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        IOrderService orderService=(IOrderService) context.getBean("ordersService");
        Orders orders=orderService.getOrders(1);
        System.out.println(orders);
    }
}
