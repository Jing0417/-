package com.Li.controller;

import com.Li.pojo.Equipment;
import com.Li.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/equipment")
public class Equipment_Controller {

    @Autowired
    private EquipmentService equipmentService;

    // 添加器材
    @RequestMapping("/addEquipment")
    public String addEquipment(Equipment equipment) {
        equipmentService.addEqu(equipment);
        // 转发到 "selEquipment" 页面
        return "forward:/equipment/selEquipment";
    }

    // 删除器材
    @RequestMapping("/delEquipment")
    public String deleteEquipment(Integer equipmentId) {
        equipmentService.DelbyEquid(equipmentId);
        // 转发到 "selEquipment" 页面
        return "forward:/equipment/selEquipment";
    }

    // 更新器材
    @RequestMapping("/updateEquipment")
    public String updateEquipment(Equipment equipment) {
        equipmentService.modifyEquInfo(equipment);
        // 转发到 "selEquipment" 页面
        return "forward:/equipment/selEquipment";
    }

    // 查询器材
    @RequestMapping("/selEquipment")
    public String selectEquipment(Model model, HttpSession session) {
        List<Equipment> equipmentList = equipmentService.FindEqu();
        session.setAttribute("equipmentList", equipmentList);
        model.addAttribute("equipmentList", equipmentList);
        // 返回 "SelectEquipment" 视图
        return "SelectEquipment";
    }

    // 跳转到 "UpdateEquipment" 页面
    @RequestMapping("/toUpdateEquipment")
    public String toUpdateEquipment(Integer equipmentId, Model model) {
        List<Equipment> equipmentList = equipmentService.FindEqubyid(equipmentId);
        model.addAttribute("equipmentList", equipmentList);
        // 返回 "UpdateEquipment" 视图
        return "UpdateEquipment";
    }

    // 跳转到 "AddEquipment" 页面
    @RequestMapping("/toAddEquipment")
    public String toAddEquipment() {
        // 返回 "AddEquipment" 视图
        return "AddEquipment";
    }
}
