package com.qst.ssm.dao.impl;

import com.github.pagehelper.PageHelper;
import com.qst.ssm.dao.IProductDao;
import com.qst.ssm.entity.Product;
import com.qst.ssm.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("productDao")
public class ProductDaoImpl implements IProductDao {
    @Autowired
    @Qualifier("productMapper")
    private ProductMapper productMapper;

    /**
     * 查询所有产品
     * @return
     */
    @Override
    public List<Product> findall() {
        return productMapper.findall();
    }

    /**
     * 添加产品
     * @param product
     */
    @Override
    public void add(Product product) {
        productMapper.add(product);
    }

    @Override
    public Product findProductById(int Id) {
        return productMapper.findProductById(Id);
    }

    @Override
    public int updateById(Product product) {
        return productMapper.updateById(product);
    }

    @Override
    public int deleteById(int Id) {
        return productMapper.deleteById(Id);
    }

    @Override
    public List<Product> findProductByKeyword(String Keyword) {
        return productMapper.findProductByKeyword(Keyword);
    }
}
