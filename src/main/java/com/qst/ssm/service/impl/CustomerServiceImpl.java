package com.qst.ssm.service.impl;

<<<<<<< HEAD
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
=======
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

    @Override
    public int addCustomer(Customer customer) {
        return customerDao.addCustomer(customer);
>>>>>>> origin/master
    }
}
