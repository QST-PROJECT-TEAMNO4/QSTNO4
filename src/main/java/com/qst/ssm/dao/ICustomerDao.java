package com.qst.ssm.dao;

/**
 * 客户Dao层接口
 */
import com.qst.ssm.entity.Customer;
import org.apache.ibatis.annotations.Param;

public interface ICustomerDao {
    public Customer findCustomer(@Param("username") String username, @Param("password") String password);
    public int changePW(@Param("oldPassword")String oldPassword,@Param("newPassword") String newPassword);
}
