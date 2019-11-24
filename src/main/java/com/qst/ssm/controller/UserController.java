package com.qst.ssm.controller;

import com.qst.ssm.entity.User;
import com.qst.ssm.service.UserService;
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
public class UserController {
//依赖注入
    @Autowired
    private UserService userService;
    /**
     * 用户登录
     */
    @RequestMapping(value="/AdminLogin.action",method = RequestMethod.POST)
    public String login(String username, String password, Model model, HttpSession session){
        //通过账号和密码查询用户
        User user=userService.findUser(username,password);

        if (user!=null){
            //将用户对象添加到Session
            session.setAttribute("USER_SESSION",user);
            User user1=(User) session.getAttribute("USER_SESSION");
            user1.getId();
            System.out.println(user1.getId());
            System.out.println(user);
            model.addAttribute("user",user1.getId());
            //跳转到主页面

            return "AdminMain";

        }
        model.addAttribute("msg","账号或密码错误，请重新输入！");
        return "AdminLogin";
    }

    /**
     * 退出登录
     */
    @RequestMapping(value = "/AdminLogout.action")
    public  String logout(HttpSession session){
        //清除Session
        session.invalidate();
        //重定向到登录页面的方法
        return "redirect:AdminLogin.action";
    }
    /**
     * 向用户登录页面跳转
     */
    @RequestMapping(value = "/AdminLogin.action",method = RequestMethod.GET)
    public String toLogin(){
        return "AdminLogin";
    }

    /**
     * 修改登录密码
     */
    @RequestMapping(value ="ChangePassword.action" ,method = RequestMethod.POST )
    public String change(String oldPassword, String newPassword,HttpSession session){
        //通过账号和密码查询用户
        int row=userService.changePW(oldPassword,newPassword);
        if (row==1){
            //清除Session
            session.invalidate();
            //重定向到登录页面的方法
            return "redirect:AdminLogin.action";
        }
        else return "redirect:ChangePassword.action";
    }
    /**
     * 修改失败转到错误页面
     */
    @RequestMapping(value = "/ChangePassword.action",method = RequestMethod.GET)
    public String toChange(){
        return "AdminCPWError";
    }
}
