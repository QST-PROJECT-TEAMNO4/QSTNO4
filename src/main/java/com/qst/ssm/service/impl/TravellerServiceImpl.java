package com.qst.ssm.service.impl;

import com.qst.ssm.dao.ITravellerDao;
import com.qst.ssm.entity.Traveller;
import com.qst.ssm.service.ITravellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("travellerService")
public class TravellerServiceImpl implements ITravellerService {
    @Autowired
    @Qualifier("travellerDao")
    private ITravellerDao travellerDao;
    /**
     * 根据订单Id查询旅客信息
     * @param Id
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    @Override
    public Traveller getOrdersTraveller(int Id) {
        return travellerDao.getOrdersTraveller(Id);
    }

    /**
     * 修改旅客信息
     * @param traveller
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public int updateTraveller(Traveller traveller) {
        return travellerDao.updateTraveller(traveller);
    }
}
