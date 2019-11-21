package com.sqt.ssm.test;

import com.qst.ssm.entity.Member;
<<<<<<< HEAD
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IMemberService;
import com.qst.ssm.service.IProductService;
=======
import com.qst.ssm.service.IMemberService;
>>>>>>> origin/master
import org.junit.Test;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

<<<<<<< HEAD
import java.util.List;

public class TestMember {
    AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    IMemberService memberService =  (IMemberService) context.getBean("memberService");
    Member member=new Member();
    /**
     * 测试查询所有订单表
     */
//    @Test
//    public void testfindAll(){
//        List<Member> memberList = memberService.findAll();
//        System.out.println(memberList);
//        if (!memberList.isEmpty()){
//            for (Member member:memberList){
//                System.out.println(member);
//            }
//        }
//        context.close();
//    }

    @Test
    public void testfindByKeyword(){
        List<Member> memberList = memberService.findByKeyWord("白");
        System.out.println(memberList);
        if (!memberList.isEmpty()){
            for (Member member:memberList){
                System.out.println(member);
            }
        }
        context.close();
    }

    @Test
    public void testfindById(){
        Member memberList = memberService.findById(3);
        System.out.println(memberList);

        context.close();
    }

    @Test
    public void testadd(){
        member.setHyname("鲁智深");
        member.setNickname("花和尚");
        member.setPhoneNum("1981244564");
        member.setEmail("123@qq.com");
        int rows = memberService.add(member);
        System.out.println(rows);
        System.out.println(member);
    }

    @Test
    public void testupdate(){
        member.setId(6);
        member.setHyname("张清");
        member.setNickname("没羽箭");
        member.setPhoneNum("1981244564");
        member.setEmail("123@qq.com");
        int rows = memberService.update(member);
        System.out.println(rows);
        System.out.println(member);
    }


    @Test
    public void testdelete(){
        int rows = memberService.delete(6);
        System.out.println(rows);

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
=======
public class TestMember {
    AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    IMemberService memberService=(IMemberService) context.getBean("memberService");

    @Test
    public void testGetOrdersMember(){
        Member member=memberService.getOrdersMember(2);
        System.out.println(member);
        context.close();
    }
>>>>>>> origin/master
}
