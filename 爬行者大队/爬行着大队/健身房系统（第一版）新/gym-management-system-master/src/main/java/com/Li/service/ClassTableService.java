package com.Li.service;

import com.Li.pojo.ClassTable;

import java.util.List;

//课表service接口
public interface ClassTableService {

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
