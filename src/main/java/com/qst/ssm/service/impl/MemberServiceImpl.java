package com.qst.ssm.service.impl;

import com.qst.ssm.dao.IMemberDao;
import com.qst.ssm.entity.Member;
import com.qst.ssm.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements IMemberService {
    @Autowired
    @Qualifier("memberDao")
    private IMemberDao memberDao;

    @Override
    public Member getOrdersMember(int Id) {
        return memberDao.getOrdersMember(Id);
    }
}
