package com.Li.mapper;

import com.Li.pojo.ClassTable;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ClassTableMapper {

    //查询所有课程
    List<ClassTable> Findschedule();

    //根据id删除课程
    Boolean Delbyclassid(Integer classId);

    //添加课程
    Boolean addClass(ClassTable classTable);

    //根据id查询课表
    ClassTable FindClassbyid(Integer classId);

    //根据id删除已预约的课程
    Boolean DelbyclassidInOrder(Integer classId);

}
