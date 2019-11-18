package com.qst.ssm.service;

import com.qst.ssm.entity.Orders;

import java.util.List;

/**
 *订单业务接口类
 */
public interface IOrderService {
    /**
     * 查询所有订单
     * @return
     */
    List<Orders> queryOrders();

    /**
     * 根据Id查询订单信息
     * @param Id
     * @return
     */
    Orders getOrders(int Id);

    /**
     * 添加订单信息
     * @param orders
     * @return
     */
    int insertOrders(Orders orders );



}
