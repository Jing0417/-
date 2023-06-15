package com.Li.mapper;

import com.Li.pojo.Equipment;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface EquipmentMapper {

    //查询所有器械
    List<Equipment> FindEqu();

    //根据id删除器械
    Boolean DelbyEquid(Integer equipmentId);

    //添加器材
    Boolean addEqu(Equipment equipment);

    //根据id修改器械信息
    Boolean modifyEquInfo(Equipment equipment);

    //根据id查询器械
    List<Equipment> FindEqubyid(Integer equipmentId);

    //查询器械总数
    Integer EquTotal();

}
