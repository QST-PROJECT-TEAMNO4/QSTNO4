package com.qst.ssm.mapper;

import com.qst.ssm.entity.Customer;
import org.apache.ibatis.annotations.Param;

public interface CustomerMapper {
    /**
     *  登录验证
     * @param username 账号
     * @param password 密码
     * @return
     */
    public Customer findCustomer(@Param("username") String username, @Param("password") String password);

    /**
     *  修改密码
     * @param oldPassword 原密码
     * @param newPassword 新密码
     * @return
     */
    public int changePW(@Param("oldPassword") String oldPassword, @Param("newPassword") String newPassword);

    /**
     * 注册
     * @param customer
     * @return
     */
    public int addCustomer(Customer customer);
}
