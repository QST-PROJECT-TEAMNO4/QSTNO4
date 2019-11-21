package com.qst.ssm.service.impl;

import com.alibaba.druid.sql.visitor.functions.If;
import com.qst.ssm.dao.ICustomerDao;
import com.qst.ssm.entity.Customer;
import com.qst.ssm.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import java.util.List;

@Service("customerService")
public class CustomerServiceImpl implements ICustomerService {

    @Autowired
    @Qualifier("customerDao")
    private ICustomerDao customerDao;

    @Override
    public List<Customer> findAll() {
        return customerDao.findAll();
    }

    @Override
    public List<Customer> findByKeyWord(String Keyword) {
        return customerDao.findByKeyWord(Keyword);
    }

    @Override
    public Customer findById(int Id) {
        return customerDao.findById(Id);
    }

    @Override
    public int delete(int Id) {
        return customerDao.delete(Id);
    }

    @Override
    public int update(Customer customer) {
        return customerDao.update(customer);
    }
}
