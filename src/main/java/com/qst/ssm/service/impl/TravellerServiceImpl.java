package com.qst.ssm.service.impl;

import com.qst.ssm.dao.ITravellerDao;
import com.qst.ssm.entity.Traveller;
import com.qst.ssm.service.ITravellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("travellerService")
public class TravellerServiceImpl implements ITravellerService {
    @Autowired
    @Qualifier("travellerDao")
    private ITravellerDao travellerDao;
    @Override
    public Traveller getOrdersTraveller(int Id) {
        return travellerDao.getOrdersTraveller(Id);
    }
}
