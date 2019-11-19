package com.qst.ssm.service.impl;

import com.qst.ssm.dao.IOrdersDao;
import com.qst.ssm.entity.Orders;
import com.qst.ssm.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service("ordersService")
public class OrdersServiceImpl implements IOrderService {
    @Autowired
    @Qualifier("ordersDao")
    private IOrdersDao ordersDao;

    @Transactional(propagation = Propagation.REQUIRED,readOnly = true)
    @Override
    public List<Orders> queryOrders() {
        return ordersDao.queryOrders();
    }
    @Transactional(propagation = Propagation.REQUIRED,readOnly = true)
    @Override
    public Orders getOrders(int Id) {
        return ordersDao.getOrders(Id);
    }
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public int insertOrders(Orders orders) {
        return ordersDao.insertOrders(orders);
    }

    @Override
    public int deleteOrders(int Id) {
        return ordersDao.deleteOrders(Id);
    }

    @Override
    public int updateOrders(Orders orders) {
        return ordersDao.updateOrders(orders);
    }

    @Override
    public List<Map<String, Object>> queryOrders1() {
        return ordersDao.queryOrders1();
    }

    @Override
    public List<Map<String, Object>> particulars(int Id) {
        return ordersDao.particulars(Id);
    }


}
