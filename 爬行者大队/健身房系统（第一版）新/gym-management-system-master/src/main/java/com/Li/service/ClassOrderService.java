package com.Li.service;

import com.Li.pojo.ClassOrder;

import java.util.List;
//报名Service层接口
public interface ClassOrderService {

    //查询所有报名表信息
    List<ClassOrder>Findclass();

    //添加报名信息
    Boolean addClass(ClassOrder classOrder);

    //根据会员账号查询个人报名课表
    List<ClassOrder> FindClassbyAccount(Integer memberAccount);

    //删除已预约的课程
    Boolean DelClassbyid(Integer classOrderId);

    //查询会员是否报名该课程
    ClassOrder CheckVIPhasClass(Integer classId, Integer memberAccount);

    //根据课程id查询所有报名的会员
    List<ClassOrder> FindRegistrationInfo(Integer classId);

}
