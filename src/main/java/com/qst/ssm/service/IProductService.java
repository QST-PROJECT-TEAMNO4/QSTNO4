package com.qst.ssm.service;

import com.qst.ssm.entity.Product;

import java.util.List;

public interface IProductService {
    //查询所有产品
    public List<Product> findall(int page,int size);


    //添加产品
    void add(Product product);

    /**
     * 根据ID查询产品信息
     * @param Id
     * @return
     */
    Product findProductById(int Id);

    /**
     *根据id更新产品数据
     * @param product
     * @return
     */
    int updateById(Product product);


    /**
     * 根据Id删除产品信息
     * @param Id
     * @return
     */
    int deleteById(int Id);

    /**
     * 模糊查询
     * @param Keyword
     * @return
     */
    List<Product> findProductByKeyword(String Keyword);
}
