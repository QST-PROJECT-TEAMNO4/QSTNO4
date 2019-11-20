package com.qst.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.qst.ssm.dao.IProductDao;
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("productService")
public class ProductServiceImpl implements IProductService {
    @Autowired
    @Qualifier("productDao")
    private IProductDao productDao;

    /**
     * 查询所有产品
     * @return
     */
    @Override
    public List<Product> findall(int page,int size) {
        //pageNum是页码，pageSize是每页显示数据的条数
        PageHelper.startPage(page,size);
        return productDao.findall();
    }

    //添加产品

    @Override
    public void add(Product product) {
        productDao.add(product);
    }

    /**
     * 根据ID查询产品信息
     * @param Id
     * @return
     */
    @Override
    public Product findProductById(int Id) {
        return productDao.findProductById(Id);
    }


    /**
     * 根据Id更新产品数据
     * @param product
     * @return
     */
    @Override
    public int updateById(Product product) {
        return productDao.updateById(product);
    }

    @Override
    public int deleteById(int Id) {
        return productDao.deleteById(Id);
    }

    @Override
    public List<Product> findProductByKeyword(String Keyword) {

        return productDao.findProductByKeyword(Keyword);
    }
}
