package com.qst.ssm.service;

import com.qst.ssm.entity.Customer;
import org.apache.ibatis.annotations.Param;

public interface CustomerService {
    /**
     * 登录验证
     * @param username
     * @param password
     * @return
     */
    public Customer findCustomer( String username,String password);

    /**
     * 修改密码
     * @param oldPassword
     * @param newPassword
     * @return
     */
    public int changePW(String oldPassword, String newPassword);

    /**
     * 注册
     * @param customer
     * @return
     */
    public int addCustomer(Customer customer);
}
