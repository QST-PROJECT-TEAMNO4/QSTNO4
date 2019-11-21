package com.qst.ssm.controller;


import com.github.pagehelper.PageInfo;
import com.qst.ssm.dao.IMemberDao;
import com.qst.ssm.entity.Member;
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private IMemberService memberService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,
                                @RequestParam(name = "size",required = true,defaultValue = "5") int size) {
        ModelAndView mv = new ModelAndView();
        List<Member> memberList =memberService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(memberList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("member-page-list");
        return mv;
    }

    @RequestMapping("/findById" )
    public ModelAndView findById(int Id){
        ModelAndView mv = new ModelAndView();
        Member member  = memberService.findById(Id);
        mv.addObject("MemberOne",member);
        mv.setViewName("member-update");
        return mv;
    }

    @RequestMapping("/findByKeyWord")
    public ModelAndView findByKeyWord(String Keyword) {
        ModelAndView mv = new ModelAndView();
        List<Member> memberList =memberService.findByKeyWord(Keyword);
        mv.addObject("memberList",memberList);
        mv.setViewName("member-list");
        return mv;
    }

    @RequestMapping("/update")
    public String update(Member member){
        int rows = memberService.update(member);
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

    @RequestMapping("/add")
    public String add(Member member){
        int rows = memberService.add(member);
        if (rows == 1){
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

    @RequestMapping("/delete")
    public String delete(int Id){
        int rows = memberService.delete(Id);
        return "redirect:findAll";
    }



}
