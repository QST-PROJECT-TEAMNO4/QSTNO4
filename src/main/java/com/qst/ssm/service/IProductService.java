package com.qst.ssm.service;

import com.qst.ssm.entity.Product;

import java.util.List;

public interface IProductService {
    //查询所有产品
    public List<Product> findall();
}
