package com.qst.ssm.controller;

import com.qst.ssm.entity.Customer;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 *用户控制器类
 */
@Controller
public class CustomerController {
    //依赖注入
    @Autowired
    private CustomerService customerService;
    /**
     * 用户登录
     */
    @RequestMapping(value="/CustomerLogin.action",method = RequestMethod.POST)
    public String login(String username, String password, Model model, HttpSession session){
        //通过账号和密码查询用户
        Customer customer=customerService.findCustomer(username,password);
        if (customer!=null){
            //将用户对象添加到Session
            session.setAttribute("CUSTOMER_SESSION",customer);
            System.out.println(customer);
            //跳转到主页面
            return "main";

        }
        model.addAttribute("msg","账号或密码错误，请重新输入！");
        return "login";
    }

    /**
     * 退出登录
     */
    @RequestMapping(value = "/CustomerLogout.action")
    public  String logout(HttpSession session){
        //清除Session
        session.invalidate();
        //重定向到登录页面的方法
        return "redirect:CustomerLogin.action";
    }
    /**
     * 向用户登录页面跳转
     */
    @RequestMapping(value = "/CustomerLogin.action",method = RequestMethod.GET)
    public String toLogin(){
        return "login";
    }


    /**
     * 修改登录密码
     */
    @RequestMapping(value ="CPassword.action" ,method = RequestMethod.POST )
    public String change(String oldPassword, String newPassword,HttpSession session){
        //通过账号和密码查询用户
        int row=customerService.changePW(oldPassword,newPassword);
        if (row==1){
            //清除Session
            session.invalidate();
            //重定向到登录页面的方法
            return "redirect:CustomerLogin.action";
        }
        else return "redirect:Error.action";
    }
    /**
     * 修改失败转到错误页面
     */
    @RequestMapping(value = "/Error.action",method = RequestMethod.GET)
    public String errorChange(){
        return "CPWError";
    }


    @RequestMapping(value = "/register.action",method = RequestMethod.POST)
    public String insertOrders(Customer customer){
        int rows=customerService.addCustomer(customer);
        if (rows==1){
            return "redirect:CustomerLogin.action";
        }else {
            return "redirect:/register.action";
        }
    }




}