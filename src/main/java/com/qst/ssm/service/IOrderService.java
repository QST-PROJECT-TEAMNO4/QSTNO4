package com.qst.ssm.service;

import com.qst.ssm.entity.Orders;

import java.util.List;
import java.util.Map;

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

    /**
     * 根据ID删除订单信息
     * @param Id
     * @return
     */
    int deleteOrders(int Id);

    /**
     * 修改订单信息
     * @param orders
     * @return
     */
    int updateOrders(Orders orders);

    /**
     * 多表查询
     * @return
     */
    List<Map<String,Object>> queryOrders1();

    /**
     * 查询所有订单并进行分页管理
     * @param page
     * @param size
     * @return
     */
    List<Map<String,Object>> queryOrdersProduct(int page,int size);


    /**
     * 根据Id查询订单-产品信息
     * @param Id
     * @return
     */
    Map<String,Object> getOrdersProduct(int Id);

    /**
     * 对订单-产品信息进行模糊查询
     * @param page
     * @param size
     * @param Keyword 关键字
     * @return
     */
    List<Map<String,Object>> OPFallAllLike(int page,int size, String Keyword);

    /**
     * 根据ID修改支付状态
     * @param Id
     * @return
     */
    int updateOrdersStatus(int Id);

    /**
     * 根据订单ID查询订单详情
     * @param orderNum
     * @return
     */
    Map<String,Object> orderInfo(String orderNum);

    /**
     * 查询该用户下的所有订单
     * @param Id
     * @return
     */
    List<Map<String,Object>> CusQueryOrders(int page,int size, int Id);

}
