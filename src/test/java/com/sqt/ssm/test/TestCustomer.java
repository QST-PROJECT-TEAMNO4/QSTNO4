package com.sqt.ssm.test;

import com.qst.ssm.entity.Customer;
import com.qst.ssm.entity.Member;
import com.qst.ssm.service.ICustomerService;
import com.qst.ssm.service.IMemberService;
import org.junit.Test;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TestCustomer {
    AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    ICustomerService customerService =  (ICustomerService) context.getBean("customerService");
    Customer customer = new Customer();

    @Test
    public void testfindAll(){
        List<Customer> customerList = customerService.findAll();
        System.out.println(customerList);
        if (!customerList.isEmpty()){
            for (Customer customer:customerList){
                System.out.println(customer);
            }
        }
        context.close();
    }

    @Test
    public void testfindByKeyword(){
        List<Customer> customerList = customerService.findByKeyWord("163");
        System.out.println(customerList);
        if (!customerList.isEmpty()){
            for (Customer customer:customerList){
                System.out.println(customer);
            }
        }
        context.close();
    }

    @Test
    public void testfindById(){
        Customer customer = customerService.findById(1);
        System.out.println(customer);

        context.close();
    }

//    @Test
//    public void testadd(){
//        customer.setUsername("鲁智深");
//        customer.setPassword("花和尚");
//        customer.setEmail("1981244564");
//        customer.setPhoneNum();
//        int rows = customerService.(customer);
//        System.out.println(rows);
//        System.out.println(customer);
//    }

//    @Test
//    public void testupdate(){
//        customer.setId(2);
//        customer.setUsername("zxcasd");
////        customer.setPassword("123456");
////        customer.setPhoneNum("12345678977");
////        customer.setEmail("123@qq.com");
//        int rows = customerService.update(customer);
//        System.out.println(rows);
//        System.out.println(customer);
//    }

    @Test
    public void testupdate(){
        customer.setId(1);
        customer.setEmail("asda@qq.com");
        customer.setUsername("asdadad1111");
        customer.setPassword("123456");
        customer.setPhoneNum("18177491365");
        customerService.update(customer);
        System.out.println(customer);
    }

    @Test
    public void testdelete(){
        int rows = customerService.delete(2);
        System.out.println(rows);

    }

}
