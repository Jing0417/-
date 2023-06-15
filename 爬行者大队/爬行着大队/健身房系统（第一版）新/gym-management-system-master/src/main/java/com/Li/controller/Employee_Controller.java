package com.Li.controller;

import com.Li.pojo.Employee;
import com.Li.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/employee")
public class Employee_Controller {

    @Autowired
    private EmployeeService employeeService;
    //新增员工
    //工号和加入日期由系统自动生成无需手动输入
    @RequestMapping("/addEmployee")
    public String addEmployee(Employee employee) {
        //利用Stringformat使得工号随机生成
        Random random = new Random();
        String account1 = "2023" + String.format("%05d", random.nextInt(100000));
        Integer account = Integer.parseInt(account1);

        //使用simpleDateFormat初始化时间戳并获取当前日期
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String nowDay = simpleDateFormat.format(date);

        employee.setEmployeeAccount(account);
        employee.setEntryTime(nowDay);

        employeeService.addEmployee(employee);

        //转发到查询员工页面
        return "forward:/employee/selEmployee";
    }
    //删除员工
    @RequestMapping("/delEmployee")
    public String deleteEmployee(Integer employeeAccount) {
        employeeService.DelbyEmpAccount(employeeAccount);
        //转发到查询员工页面
        return "forward:/employee/selEmployee";
    }
    //修改员工信息
    @RequestMapping("/updateEmployee")
    public String updateEmployee(Employee employee) {
        employeeService.modifyEmpInfo(employee);
        //转发到查询员工页面
        return "forward:/employee/selEmployee";
    }

    //查询员工
    @RequestMapping("/selEmployee")
    public String selectEmployee(Model model) {
        List<Employee> employeeList = employeeService.FindEmp();
        model.addAttribute("employeeList", employeeList);
        // 返回 "SelectEmployee" 视图
        return "SelectEmployee";
    }
    //直接返回视图名称
    @RequestMapping("/toAddEmployee")
    public String toAddEmployee() {
        return "AddEmployee";
    }
    //直接返回视图名称
    @RequestMapping("/toUpdateEmployee")
    public String toUpdateEmployee(Integer employeeAccount, Model model) {
        List<Employee> employeeList = employeeService.FindEmpbyAccount(employeeAccount);
        model.addAttribute("employeeList", employeeList);
        //返回 "UpdateEmployee" 视图
        return "UpdateEmployee";
    }



}
