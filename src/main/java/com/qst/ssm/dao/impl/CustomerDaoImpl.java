package com.qst.ssm.dao.impl;

import com.qst.ssm.dao.ICustomerDao;
import com.qst.ssm.entity.Customer;
import com.qst.ssm.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("customerDao")
public class CustomerDaoImpl implements ICustomerDao {
    @Autowired
    private CustomerMapper customerMapper;
    @Override
    public Customer findCustomer(String username, String password) {
        return customerMapper.findCustomer(username,password);
    }

    @Override
    public int changePW(String oldPassword, String newPassword) {
        return customerMapper.changePW(oldPassword,newPassword);
    }

    @Override
    public int addCustomer(Customer customer) {
        return customerMapper.addCustomer(customer);
    }

}
