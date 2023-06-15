package com.Li.service;

import com.Li.pojo.Member;

import java.util.List;

//会员Service层接口
public interface MemberService {

    //查询会员信息
    List<Member> FindVIP();

    //新增会员信息
    Boolean addVIP(Member member);

    //根据会员账号修改会员信息
    Boolean modifyVIPInfo(Member member);

    //查询会员账号密码（登录）
    Member userLogin(Member member);
    //Member selectByAccountAndPassword(Member member);

    //根据会员账号删除会员信息
    Boolean DelbyVIPid(Integer memberAccount);

    //查询会员数
    Integer VIPTotal();

    //根据会员账号查询会员
    List<Member> FindVIPbyid(Integer memberAccount);

}
