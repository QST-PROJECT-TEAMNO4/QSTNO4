 package com.qst.ssm.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private IProductService productService;


//    //查询全部产品
//    @RequestMapping("/findAll")
//    public ModelAndView findAll() {
//        ModelAndView mv = new ModelAndView();
//        List<Product> ps =productService.findall();
//        mv.addObject("productList",ps);
//        mv.setViewName("product-list");
//        return mv;
//    }

        //查询全部产品 分页
    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,
                                @RequestParam(name = "size",required = true,defaultValue = "5") int size) {
        ModelAndView mv = new ModelAndView();
        List<Product> ps =productService.findall(page,size);
        PageInfo pageInfo = new PageInfo(ps);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("product-page-list");
        System.out.println("******************"+mv);
        return mv;
    }

    /**
     * 根据id查询单个产品
     * @param Id
     * @return
     */
    @RequestMapping("/findById" )
    public ModelAndView findProductById(int Id){
        ModelAndView mv = new ModelAndView();
        Product product = productService.findProductById(Id);
        mv.addObject("productOne",product);
        mv.setViewName("product-update");
        return mv;
    }

    /**
     * 模糊查询
     * @return
     */
    @RequestMapping("/findProductByKeyword")
    public ModelAndView findProductByKeyword(String Keyword) {
        ModelAndView mv = new ModelAndView();
        List<Product> ps =productService.findProductByKeyword(Keyword);
        mv.addObject("productList",ps);
        mv.setViewName("product-list");
        return mv;
    }

    /**
     * 添加产品
     */
    @RequestMapping("/add")
    public String add(Product product){
       productService.add(product);
       return "redirect:findAll";
    }

    /**
     * 根据Id更新产品
     * @param product
     * @return
     */
    @RequestMapping("/updateById")
    public String updateById(Product product){
       int rows = productService.updateById(product);
       if (rows==1){
           System.out.println("更新成功");
           return "redirect:findAll";
       }
       else  if (0== rows){
           System.out.println("更新失败");
           System.out.println(product);
       }
       else{
           System.out.println("服务器异常");
       }
        return "redirect:findAll";
    }


    @RequestMapping("/deleteById")
    public String deleteById(int Id){
        int rows = productService.deleteById(Id);
        return "redirect:findAll";
    }


}
