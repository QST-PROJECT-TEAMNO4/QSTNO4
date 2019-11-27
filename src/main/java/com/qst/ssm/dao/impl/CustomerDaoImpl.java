package com.qst.ssm.dao.impl;

import com.qst.ssm.dao.ICustomerDao;
import com.qst.ssm.entity.Customer;
import com.qst.ssm.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository("customerDao")
public class CustomerDaoImpl implements ICustomerDao {

    @Autowired
    @Qualifier("customerMapper")
    private CustomerMapper customerMapper;

    @Override
    public List<Customer> findAll() {
        return customerMapper.findAll();
    }

    @Override
    public List<Customer> findByKeyWord(String Keyword) {
        return customerMapper.findByKeyWord(Keyword);
    }

    @Override
    public Customer findById(int Id) {
        return customerMapper.findById(Id);
    }

    @Override
    public int delete(int Id) {
        return customerMapper.delete(Id);
    }

    @Override
    public int update(Customer customer) {
        return customerMapper.update(customer);
    }

    @Override
    public Customer findCustomer(String username, String password) {
        return customerMapper.findCustomer(username,password);
    }

    @Override
    public int changePW(String oldPassword, String newPassword,String username) {
        return customerMapper.changePW(oldPassword,newPassword,username);
    }

    @Override
    public int addCustomer(Customer customer) {
        return customerMapper.addCustomer(customer);
    }

    @Override
    public int updateCustomer(Customer customer) {
        return customerMapper.updateCustomer(customer);
    }

    @Override
    public int updateCustomer2(Customer customer) {
        return customerMapper.updateCustomer2(customer);
    }

    @Override
    public Customer getOrdersCustomer(int Id) {
        return customerMapper.getOrdersCustomer(Id);
    }


}
