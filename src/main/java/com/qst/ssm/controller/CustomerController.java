package com.qst.ssm.controller;


import com.qst.ssm.entity.Customer;
import com.qst.ssm.entity.Member;
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.ICustomerService;
import com.qst.ssm.service.IMemberService;
import com.qst.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *用户控制器类
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    //依赖注入
    @Autowired
    private ICustomerService customerService;

    @Autowired
    private IProductService productService;

    @Autowired
    private IMemberService memberService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,
                                @RequestParam(name = "size",required = true,defaultValue = "5") int size) {
        ModelAndView mv = new ModelAndView();
        List<Customer> customerList =customerService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(customerList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("customer-page-list");
        return mv;
    }

    @RequestMapping("/findByKeyWord")
    public ModelAndView findByKeyWord(String Keyword) {
        ModelAndView mv = new ModelAndView();
        List<Customer> customerList =customerService.findByKeyWord(Keyword);
        mv.addObject("customerList",customerList);
        mv.setViewName("customer-list");
        return mv;
    }

    @RequestMapping("/update")
    public String update(Customer customer){
        int rows = customerService.update(customer);
        if (rows==1){
            System.out.println("更新成功");
            return "redirect:findAll";
        }
        else  if (0== rows){
            System.out.println("更新失败");
        }
        else{
            System.out.println("服务器异常");
        }
        return "redirect:findAll";
    }


    /**
     * 用户登录
     */
    @RequestMapping(value="/CustomerLogin.action",method = RequestMethod.POST)
    public void login(String username, String password, Model model, HttpSession session,HttpServletResponse response) throws IOException {
        //通过账号和密码查询用户
        System.out.println(username);
        System.out.println(password);
        Customer customer=customerService.findCustomer(username,password);


        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String msg = null;
        System.out.println(customer);
        if (customer!=null){
            session.setAttribute("CUSTOMER_SESSION",customer);
            msg = "alert( '登录成功' );location.href='main.action'";
        }else {
            msg = "alert( '登录失败请检查账号密码是否正确' );location.href='/pages/login.jsp'";
        }
        writer.print("<script type='text/javascript'>" + msg + "</script>");
        writer.flush();
        writer.close();

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
    public void change(String oldPassword, String newPassword,String username,HttpSession session,HttpServletResponse response) throws IOException {
        //通过账号和密码查询用户
        int row=customerService.changePW(oldPassword,newPassword,username);

        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String msg = null;
        System.out.println(row);
        if (row==1){
            msg = "alert( '密码修改成功，请重新登录' );location.href='CustomerLogin.action'";
        }else {
            msg = "location.href='/customer/Error.action'";
        }
        writer.print("<script type='text/javascript'>" + msg + "</script>");
        writer.flush();
        writer.close();


    }
    /**
     * 修改失败转到错误页面
     */
    @RequestMapping(value = "/Error.action",method = RequestMethod.GET)
    public String errorChange(){
        return "CPWError";
    }


    @RequestMapping(value = "/main.action",method = RequestMethod.GET)
    public String backmain(){
        return "main";
    }


    /**
     * 注册
     * @param customer
     */
    @RequestMapping(value = "/register.action",method = RequestMethod.POST)
    public void insertOrders(Customer customer, HttpServletResponse response,HttpSession session) throws IOException {

        session.setAttribute("CUSTOMER_SESSION",customer);
        int rows=customerService.addCustomer(customer);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String msg = null;
        if (rows==1){
            msg = "alert( '注册成功，已为您添加账号信息，接下来请完善个人信息' );location.href='/pages/customerInfoAdd.jsp'";
        }else {
            msg = "alert( '注册失败，请重新注册' );location.href='/register.action'";
        }
        writer.print("<script type='text/javascript'>" + msg + "</script>");
        writer.flush();
        writer.close();
    }







    /**
     * 完善个人信息
     * @param customer
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value="/updateCustomer.action",method = RequestMethod.POST)
    public void updateCustomer(Customer customer, Model model, HttpSession session, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        System.out.println("QQQQQQQQQQQQQ" + customer);
        //通过账号和密码查询用户
        int rows = customerService.updateCustomer(customer);
        session.invalidate();
        PrintWriter writer = response.getWriter();
        String msg = null;
        if (rows == 1) {
            //将用户对象添加到Session
            System.out.println(customer);
            //跳转到主页面
            msg = "alert( '信息保存成功,请登录' );location.href='/pages/login.jsp'";

        } else {
            msg = "alert( '保存失败，请重新注册' );location.href='/pages/register.action'";
        }
        writer.print("<script type='text/javascript'>" + msg + "</script>");
        writer.flush();
        writer.close();
    }

    /**
     * 个人中心修改信息
     * @param customer
     * @param model
     * @param session
     * @param response
     * @throws IOException
     */
    @RequestMapping(value="/updateCustomer2.action",method = RequestMethod.POST)
    public void updateCustomer2(Customer customer, Model model, HttpSession session, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        System.out.println("QQQQQQQQQQQQQ" + customer);
        //通过账号和密码修改信息
        int rows = customerService.updateCustomer2(customer);
        PrintWriter writer = response.getWriter();
        String msg = null;
        System.out.println(rows);
        if (rows == 1) {
            //将用户对象添加到Session
            System.out.println(customer);
            //跳转到主页面
            msg = "alert( '信息保存成功,请重新登录' );location.href='/pages/login.jsp'";

        } else {
            msg = "alert( '保存失败' );location.href='/pages/main.action'";
        }
        writer.print("<script type='text/javascript'>" + msg + "</script>");
        writer.flush();
        writer.close();
    }






    @RequestMapping("/buyShow")
    public ModelAndView buyInfo(@RequestParam(name = "page",required = true,defaultValue = "1")int page,
                                @RequestParam(name = "size",required = true,defaultValue = "5") int size,
                                @RequestParam(name = "Id",required = true,defaultValue = "") int Id) {
        ModelAndView mv1 = new ModelAndView();
        Product products = productService.findProductById(Id);
        List<Member> memberList = memberService.findAll(page,size);
        mv1.addObject("memberList",memberList);
        mv1.addObject("products",products);
        mv1.setViewName("buy-show");
        return mv1;
    }



}

