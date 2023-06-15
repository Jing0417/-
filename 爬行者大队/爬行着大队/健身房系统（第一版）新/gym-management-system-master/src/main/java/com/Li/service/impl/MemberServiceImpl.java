package com.Li.service.impl;

import com.Li.mapper.MemberMapper;
import com.Li.pojo.Member;
import com.Li.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public List<Member> FindVIP() {
        return memberMapper.FindVIP();
    }

    @Override
    public Boolean addVIP(Member member) {
        return memberMapper.addVIP(member);
    }

    @Override
    public Boolean modifyVIPInfo(Member member) {
        return memberMapper.modifyVIPInfo(member);
    }

    @Override
    public Member userLogin(Member member) {
        return memberMapper.selectByAccountAndPassword(member);
    }

    @Override
    public Boolean DelbyVIPid(Integer memberAccount) {
        return memberMapper.DelbyVIPid(memberAccount);
    }

    @Override
    public Integer VIPTotal() {
        return memberMapper.VIPTotal();
    }

    @Override
    public List<Member> FindVIPbyid(Integer memberAccount) {
        return memberMapper.FindVIPbyid(memberAccount);
    }
}
