package com.Li.mapper;

import com.Li.pojo.Member;
import org.apache.ibatis.annotations.*;

import java.util.List;


@Mapper
public interface MemberMapper {

    //查询会员信息
    List<Member> FindVIP();

    //新增会员信息
    Boolean addVIP(Member member);

    //根据会员账号修改会员信息
    Boolean modifyVIPInfo(Member member);

    //查询会员账号密码
    Member selectByAccountAndPassword(Member member);

    //根据会员账号删除会员信息
    Boolean DelbyVIPid(Integer memberAccount);

    //查询会员数
    Integer VIPTotal();

    //根据会员账号查询会员
    List<Member> FindVIPbyid(Integer memberAccount);

}
