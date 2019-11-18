package com.qst.ssm.service.impl;

import com.qst.ssm.dao.IProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.ssm.entity.Product;
import com.qst.ssm.service.IProductService;

import java.util.List;
@Service("productService")
public class ProductServiceImpl implements IProductService {
    @Autowired
    private IProductDao productDao;
    @Override
    public List<Product> findall() {
        return productDao.findall();
    }
}
