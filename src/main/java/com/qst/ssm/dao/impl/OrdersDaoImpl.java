package com.qst.ssm.dao.impl;

import com.qst.ssm.dao.IOrdersDao;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.mapper.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("ordersDao")
public class OrdersDaoImpl implements IOrdersDao {
    @Autowired
    @Qualifier("ordersMapper")
    private OrdersMapper ordersMapper;

    @Override
    public List<Orders> queryOrders() {
        return ordersMapper.queryOrders();
    }

    @Override
    public Orders getOrders(int Id) {
        return ordersMapper.getOrders(Id);
    }

    @Override
    public int insertOrders(Orders orders) {
        return ordersMapper.insertOrders(orders);
    }

    @Override
    public int deleteOrders(int Id) {
        return ordersMapper.deleteOrders(Id);
    }

    @Override
    public int updateOrders(Orders orders) {
        return ordersMapper.updateOrders(orders);
    }

    @Override
    public List<Map<String, Object>> queryOrders1() {
        return ordersMapper.queryOrders1();
    }

    @Override
    public Map<String, Object> getOrdersProduct(int Id) {
        return ordersMapper.getOrdersProduct(Id);
    }



}
