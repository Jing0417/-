package com.Li.mapper;

import com.Li.pojo.Admin;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {

    Admin selectByAccountAndPassword(Admin admin);

}
