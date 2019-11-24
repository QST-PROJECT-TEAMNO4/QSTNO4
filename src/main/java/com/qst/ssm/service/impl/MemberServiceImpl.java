package com.qst.ssm.service.impl;


import com.github.pagehelper.PageHelper;

import com.qst.ssm.dao.IMemberDao;
import com.qst.ssm.entity.Member;
import com.qst.ssm.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import java.util.List;




@Service("memberService")
public class MemberServiceImpl implements IMemberService {

    @Autowired
    @Qualifier("memberDao")
    private IMemberDao memberDao;

    @Override

    public List<Member> findAll(int page,int size) {
        //pageNum是页码，pageSize是每页显示数据的条数
        PageHelper.startPage(page,size);
        return memberDao.findAll();
    }

    @Override
    public List<Member> findAll() {
        return memberDao.findAll();
    }


    @Override
    public List<Member> findByKeyWord(String Keyword) {
        return memberDao.findByKeyWord(Keyword);
    }

    @Override
    public Member findById(int Id) {
        return memberDao.findById(Id);
    }

    @Override
    public int add(Member member) {
        return memberDao.add(member);
    }

    @Override
    public int delete(int Id) {
        return memberDao.delete(Id);
    }

    @Override
    public int update(Member member) {
        return memberDao.update(member);
    }

    @Override
    public Member getOrdersMember(int Id) {
        return memberDao.getOrdersMember(Id);
    }

}

