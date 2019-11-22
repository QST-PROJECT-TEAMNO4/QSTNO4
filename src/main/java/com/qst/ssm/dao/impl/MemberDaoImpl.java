package com.qst.ssm.dao.impl;

import com.qst.ssm.dao.IMemberDao;
import com.qst.ssm.entity.Member;
import com.qst.ssm.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDaoImpl implements IMemberDao {
    @Autowired
    @Qualifier("memberMapper")
    private MemberMapper memberMapper;

    /**
     * 根据订单ID查询会员信息
     * @param Id
     * @return
     */
    @Override
    public Member getOrdersMember(int Id) {
        return memberMapper.getOrdersMember(Id);
    }


}
