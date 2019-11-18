package com.qst.ssm.dao.impl;

import com.qst.ssm.dao.IOrdersDao;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.mapper.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

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
        return insertOrders(orders);
    }


}
