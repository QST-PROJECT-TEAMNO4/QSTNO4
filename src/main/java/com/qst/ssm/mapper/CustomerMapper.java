package com.qst.ssm.mapper;

import com.qst.ssm.entity.Customer;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CustomerMapper {

    /**
     * 查询所有导游信息
     * @return
     */
     List<Customer> findAll();

    /**
     * 根据关键字进行模糊查询
     * @param Keyword
     * @return
     */
     List<Customer> findByKeyWord(String Keyword);

    /**
     * 根据Id查询导游
     * @param Id
     * @return
     */
    Customer findById(int Id);

//    /**
//     * 添加导游信息
//     * @param customer
//     * @return
//     */
//     int add(Customer customer);

    /**
     * 根据Id删除导游信息
     * @param Id
     * @return
     */
     int delete(int Id);

    /**
     * 根据Id修改导游信息
     * @param customer
     * @return
     */
    int update(Customer customer);

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

    /**
     * 完善用户信息
     * @param customer
     * @return
     */
    public int updateCustomer(Customer customer);



}
