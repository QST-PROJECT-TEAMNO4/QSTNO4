package com.qst.ssm.dao.impl;


import com.qst.ssm.dao.IMemberDao;
import com.qst.ssm.entity.Member;
import com.qst.ssm.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("memberDao")
public class MemberDaoImpl implements IMemberDao {

    @Autowired
    @Qualifier("memberMapper")
    private MemberMapper memberMapper;


    @Override
    public List<Member> findAll() {
        return memberMapper.findAll();
    }

    @Override
    public List<Member> findByKeyWord(String Keyword) {
        return memberMapper.findByKeyWord(Keyword);
    }

    @Override
    public Member findById(int Id) {
        return memberMapper.findById(Id);
    }

    @Override
    public int add(Member member) {
        return memberMapper.add(member);
    }

    @Override
    public int delete(int Id) {
        return memberMapper.delete(Id);
    }

    @Override
    public int update(Member member) {
        return memberMapper.update(member);
    }
}
