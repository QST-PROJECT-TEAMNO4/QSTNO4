package com.qst.ssm.controller;


import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private IProductService productService;

    @RequestMapping("/findAll")
    public ModelAndView findAll() {
        ModelAndView mv = new ModelAndView();
        List<Product> ps =productService.findall();
        mv.addObject("productList",ps);
        mv.setViewName("product-list");
        return mv;
    }
}
