package com.sqt.ssm.test;

import com.qst.ssm.entity.Orders;
import com.qst.ssm.service.IOrderService;
import org.junit.Test;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestOrders {
    AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    IOrderService orderService=(IOrderService) context.getBean("ordersService");
    Orders orders=new Orders();
    /**
     * 测试查询所有订单表
     */
    @Test
    public void testOrdersQuery(){
        List<Orders> ordersList = orderService.queryOrders();
        if (!ordersList.isEmpty()){
            for (Orders orders:ordersList){
                System.out.println(orders);
            }
        }
        context.close();
    }

    /**
     * 测试根据ID查询订单信息
     */
    @Test
    public void testGetOrders(){
        Orders orders=orderService.getOrders(3);
        System.out.println(orders);
    }

    /**
     * 测试添加订单信息
     */
    @Test
    public void testInsertOrders(){
        orders.setOrderNum("111111");
        orders.setPeopleCount(1);
        orders.setOrderDesc("1111111");
        orders.setPayType(1);
        orders.setOrderStatus(1);
        int rows=orderService.insertOrders(orders);
        System.out.println("影响行数"+rows);

    }

    /**
     * 测试修改订单信息
     */
    @Test
    public void testUpdateOrders(){
        orders.setOrderNum("333333");
        orders.setPeopleCount(150);
        orders.setOrderDesc("3333333");
        orders.setId(3);
        int rows=orderService.updateOrders(orders);
        System.out.println("影响行数"+rows);
    }

    /**
     * 测试删除订单信息
     */
    @Test
    public void testDeleteOrders(){
        int rows=orderService.deleteOrders(3);
        System.out.println("影响行数"+rows);
    }

    /**
     * 测试查询订单、产品信息
     */
    @Test
    public void testOrdersQuery1(){
        List<Map<String,Object>> mapList=orderService.queryOrders1();
        if (!mapList.isEmpty()){
            for (Map<String,Object> orders:mapList ){
                System.out.println(orders);
            }

        }
        context.close();
    }
    @Test
    public void testParticulars(){
        List<Map<String,Object>> mapList=orderService.particulars(2);
        if (!mapList.isEmpty()){
            for (Map<String,Object> orders:mapList ){
                System.out.println(orders);
            }
        }
        context.close();
    }

}
