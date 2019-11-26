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

    /**
     * 查询所有订单
     * @return
     */
    @Override
    public List<Orders> queryOrders() {
        return ordersMapper.queryOrders();
    }
    /**
     * 根据Id查询订单信息
     * @param Id
     * @return
     */
    @Override
    public Orders getOrders(int Id) {
        return ordersMapper.getOrders(Id);
    }
    /**
     * 添加订单信息
     * @param orders
     * @return
     */
    @Override
    public int insertOrders(Orders orders) {
        return ordersMapper.insertOrders(orders);
    }
    /**
     * 根据ID删除订单信息
     * @param Id
     * @return
     */
    @Override
    public int deleteOrders(int Id) {
        return ordersMapper.deleteOrders(Id);
    }
    /**
     * 修改订单信息
     * @param orders
     * @return
     */
    @Override
    public int updateOrders(Orders orders) {
        return ordersMapper.updateOrders(orders);
    }
    /**
     * 多表查询
     * @return
     */
    @Override
    public List<Map<String, Object>> queryOrdersProduct() {
        return ordersMapper.queryOrdersProduct();
    }
    /**
     * 根据Id查询订单-产品信息
     * @param Id
     * @return
     */
    @Override
    public Map<String, Object> getOrdersProduct(int Id) {
        return ordersMapper.getOrdersProduct(Id);
    }

    /**
     * 对订单-产品信息进行模糊查询
     * @return
     */
    @Override
    public List<Map<String, Object>> OPFallAllLike(String Keyword) {
        return ordersMapper.OPFallAllLike(Keyword);
    }

    @Override
    public int updateOrdersStatus(int Id) {
        return ordersMapper.updateOrdersStatus(Id);
    }


    @Override
    public Map<String, Object> orderInfo(String orderNum) {
        return ordersMapper.orderInfo(orderNum);
    }

    @Override
    public List<Map<String,Object>> CusQueryOrders(int Id) {
        return ordersMapper.CusQueryOrders(Id);
    }
}
