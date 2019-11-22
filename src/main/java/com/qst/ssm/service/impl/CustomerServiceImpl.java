package com.qst.ssm.service.impl;

import com.qst.ssm.dao.ICustomerDao;
import com.qst.ssm.entity.Customer;
import com.qst.ssm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 用户Service接口实现类
 */
@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
    //注入CustomerDao
    @Autowired
    private ICustomerDao customerDao;

    //通过账号和密码查询客户
    @Override
    public Customer findCustomer(String username, String password) {
        Customer customer = customerDao.findCustomer(username, password);
        return customer;
    }
    @Override
    public int changePW(String oldPassword,String newPassword){
        return customerDao.changePW(oldPassword, newPassword);
    }
}
