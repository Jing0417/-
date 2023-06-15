package com.Li.service.impl;

import com.Li.mapper.EquipmentMapper;
import com.Li.pojo.Equipment;
import com.Li.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EquipmentServiceImpl implements EquipmentService {

    @Autowired
    private EquipmentMapper equipmentMapper;

    @Override
    public List<Equipment> FindEqu() {
        return equipmentMapper.FindEqu();
    }

    @Override
    public Boolean DelbyEquid(Integer equipmentId) {
        return equipmentMapper.DelbyEquid(equipmentId);
    }

    @Override
    public Boolean addEqu(Equipment equipment) {
        return equipmentMapper.addEqu(equipment);
    }

    @Override
    public Boolean modifyEquInfo(Equipment equipment) {
        return equipmentMapper.modifyEquInfo(equipment);
    }

    @Override
    public List<Equipment> FindEqubyid(Integer equipmentId) {
        return equipmentMapper.FindEqubyid(equipmentId);
    }

    @Override
    public Integer EquTotal() {
        return equipmentMapper.EquTotal();
    }
}
