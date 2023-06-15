package com.Li.controller;

import com.Li.pojo.ClassOrder;
import com.Li.pojo.ClassTable;
import com.Li.pojo.Employee;
import com.Li.service.ClassOrderService;
import com.Li.service.ClassTableService;
import com.Li.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/class")
public class Class_Controller {

    @Autowired
    private ClassTableService classTableService;

    @Autowired
    private ClassOrderService classOrderService;

    @Autowired
    private EmployeeService employeeService;
    // 查询课表
    @RequestMapping("/selClass")
    public String selectClass(Model model) {
        List<ClassTable> classList = classTableService.Findschedule();
        model.addAttribute("classList", classList);
        return "SelectClass"; // 返回 "SelectClass" 视图
    }
    // 增：新增课程～
    @RequestMapping("/addClass")
    public String addClass(ClassTable classTable) {
        classTableService.addClass(classTable);
        return "forward:/class/selClass"; // 转发到查询课表页面
    }

    // 删：删除课程～
    @RequestMapping("/delClass")
    public String deleteClass(Integer classId) {
        classTableService.Delbyclassid(classId);
        classTableService.DelbyclassidInOrder(classId);
        return "forward:/class/selClass"; // 转发到查询课表页面
    }


    // 查询课程报名信息～
    @RequestMapping("/selClassOrder")
    public String selectClassOrder(Integer classId, Model model) {
        List<ClassOrder> classOrderList = classOrderService.FindRegistrationInfo(classId);
        model.addAttribute("classOrderList", classOrderList);
        return "SelectClassOrder"; // 返回 "SelectClassOrder" 视图
    }

    // 跳转新增课程页面
    @RequestMapping("/toAddClass")
    public String toAddClass(Model model) {
        List<Employee> employeeList = employeeService.FindCoach();
        model.addAttribute("employeeList", employeeList);
        return "AddClass";   // 返回 "AddClass" 视图
    }

}
