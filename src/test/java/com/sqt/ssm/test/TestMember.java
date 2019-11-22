package com.sqt.ssm.test;

import com.qst.ssm.entity.Member;
import com.qst.ssm.service.IMemberService;
import org.junit.Test;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMember {
    AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    IMemberService memberService=(IMemberService) context.getBean("memberService");

    @Test
    public void testGetOrdersMember(){
        Member member=memberService.getOrdersMember(2);
        System.out.println(member);
        context.close();
    }


}
