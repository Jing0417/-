package com.Li.service.impl;

import com.Li.mapper.ClassTableMapper;
import com.Li.pojo.ClassTable;
import com.Li.service.ClassTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ClassTableServiceImpl implements ClassTableService {

    @Autowired
    private ClassTableMapper classTableMapper;

    @Override
    public List<ClassTable> Findschedule() {
        return classTableMapper.Findschedule();
    }

    @Override
    public Boolean Delbyclassid(Integer classId) {
        return classTableMapper.Delbyclassid(classId);
    }

    @Override
    public Boolean addClass(ClassTable classTable) {
        return classTableMapper.addClass(classTable);
    }

    @Override
    public ClassTable FindClassbyid(Integer classId) {
        return classTableMapper.FindClassbyid(classId);
    }

    @Override
    public Boolean DelbyclassidInOrder(Integer classId) {
        return classTableMapper.DelbyclassidInOrder(classId);
    }
}
