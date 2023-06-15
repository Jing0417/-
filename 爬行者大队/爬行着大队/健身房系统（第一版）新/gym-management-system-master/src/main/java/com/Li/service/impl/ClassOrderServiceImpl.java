package com.Li.service.impl;

import com.Li.mapper.ClassOrderMapper;
import com.Li.pojo.ClassOrder;
import com.Li.service.ClassOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ClassOrderServiceImpl implements ClassOrderService {

    @Autowired
    private ClassOrderMapper classOrderMapper;

    @Override
    public List<ClassOrder> Findclass() {
        return classOrderMapper.Findclass();
    }

    @Override
    public Boolean addClass(ClassOrder classOrder) {
        return classOrderMapper.addClass(classOrder);
    }

    @Override
    public List<ClassOrder> FindClassbyAccount(Integer memberAccount) {
        return classOrderMapper.FindClassbyAccount(memberAccount);
    }

    @Override
    public Boolean DelClassbyid(Integer classOrderId) {
        return classOrderMapper.DelClassbyid(classOrderId);
    }

    @Override
    public ClassOrder CheckVIPhasClass(Integer classId, Integer memberAccount) {
        return classOrderMapper.CheckVIPhasClass(classId, memberAccount);
    }

    @Override
    public List<ClassOrder> FindRegistrationInfo(Integer classId) {
        return classOrderMapper.selectMemberOrderList(classId);
    }
}
