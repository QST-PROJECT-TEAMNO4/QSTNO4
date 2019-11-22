package com.qst.ssm.service;

import com.qst.ssm.entity.Customer;
import org.apache.ibatis.annotations.Param;

public interface CustomerService {
    public Customer findCustomer( String username,String password);
    public int changePW(String oldPassword, String newPassword);
}
