package com.sqt.ssm.test;

import com.qst.ssm.entity.Orders;
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IOrderService;
import com.qst.ssm.service.IProductService;
import org.junit.Test;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;
import java.util.Map;

public class TestProduct {
    AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    IProductService productService=(IProductService) context.getBean("productService");
    Product product=new Product();
    /**
     * 测试查询所有订单表
     */
    @Test
    public void testfindProductByKeyword(){
        List<Product> productList = productService.findProductByKeyword("把");
        System.out.println(productList);
        if (!productList.isEmpty()){
            for (Product product:productList){
                System.out.println(product);
            }
        }
        context.close();
    }

//    @Test
//    public void testGetOrders(){
//        Orders orders=orderService.getOrders(1);
//        System.out.println(orders);
//    }
//    @Test
//    public void testInsertOrders(){
//        orders.setOrderNum("111111");
//        orders.setPeopleCount(1);
//        orders.setOrderDesc("1111111");
//        orders.setPayType(1);
//        orders.setOrderStatus(1);
//        int rows=orderService.insertOrders(orders);
//        System.out.println("影响行数"+rows);
//
//    }
//    @Test
//    public void testUpdateOrders(){
//        orders.setOrderNum("333333");
//        orders.setPeopleCount(150);
//        orders.setOrderDesc("3333333");
//        orders.setId(3);
//        int rows=orderService.updateOrders(orders);
//        System.out.println("影响行数"+rows);
//    }
//    @Test
//    public void testDeleteOrders(){
//        int rows=orderService.deleteOrders(3);
//        System.out.println("影响行数"+rows);
//    }
//    @Test
//    public void testOrdersQuery1(){
//
//        List<Map<String,Object>> mapList=orderService.queryOrders1();
//        if (!mapList.isEmpty()){
//            for (Map<String,Object> orders:mapList ){
//                System.out.println(orders);
//            }
//
//        }
//        context.close();
//    }
}
