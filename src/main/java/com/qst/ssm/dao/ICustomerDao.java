package com.qst.ssm.dao;

import com.qst.ssm.entity.Customer;

import java.util.List;

public interface ICustomerDao {

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
}
