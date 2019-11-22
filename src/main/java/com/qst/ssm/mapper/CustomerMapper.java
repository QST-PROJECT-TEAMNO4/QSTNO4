package com.qst.ssm.mapper;

import com.qst.ssm.entity.Customer;
import org.apache.ibatis.annotations.Param;

public interface CustomerMapper {
    public Customer findCustomer(@Param("username") String username, @Param("password") String password);
    public int changePW(@Param("oldPassword")String oldPassword,@Param("newPassword") String newPassword);
}
