package com.qst.ssm.service.impl;

import com.qst.ssm.dao.IMemberDao;
import com.qst.ssm.entity.Member;
import com.qst.ssm.entity.Traveller;
import com.qst.ssm.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("memberService")
public class MemberServiceImpl implements IMemberService {
    @Autowired
    @Qualifier("memberDao")
    private IMemberDao memberDao;
    /**
     * 根据订单Id查询会员信息
     * @param Id
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    @Override
    public Member getOrdersMember(int Id) {
        return memberDao.getOrdersMember(Id);
    }



}
