package com.sqt.ssm.test;

import com.qst.ssm.entity.Member;
import com.qst.ssm.entity.Traveller;
import com.qst.ssm.service.IMemberService;
import com.qst.ssm.service.ITravellerService;
import org.junit.Test;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestTraveller {
    AbstractXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    ITravellerService travellerService=(ITravellerService) context.getBean("travellerService");

    @Test
    public void testGetOrdersMember(){
        Traveller traveller=travellerService.getOrdersTraveller(2);
        System.out.println(traveller);
        context.close();
    }
}
