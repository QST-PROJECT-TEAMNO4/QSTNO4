package com.qst.ssm.service;

import com.qst.ssm.entity.Customer;

import java.util.List;

public interface ICustomerService {
    /**
     * 查询所有导游信息
     * @return
     */
    List<Customer> findAll(int page,int size);

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
