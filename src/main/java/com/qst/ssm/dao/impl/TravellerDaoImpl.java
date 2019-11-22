package com.qst.ssm.dao.impl;

import com.qst.ssm.dao.ITravellerDao;
import com.qst.ssm.entity.Traveller;
import com.qst.ssm.mapper.TravellerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("travellerDao")
public class TravellerDaoImpl implements ITravellerDao {
    @Autowired
    @Qualifier("travellerMapper")
    private TravellerMapper travellerMapper;
    /**
     * 根据订单Id查询旅客信息
     * @param Id
     * @return
     */
    @Override
    public Traveller getOrdersTraveller(int Id) {
        return travellerMapper.getOrdersTraveller(Id);
    }
    /**
     * 修改旅客信息
     * @param traveller
     * @return
     */
    @Override
    public int updateTraveller(Traveller traveller) {
        return travellerMapper.updateTraveller(traveller);
    }

}
