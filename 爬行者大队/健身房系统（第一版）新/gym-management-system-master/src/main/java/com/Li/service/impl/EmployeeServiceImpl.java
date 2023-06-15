package com.Li.service.impl;

import com.Li.mapper.EmployeeMapper;
import com.Li.pojo.Employee;
import com.Li.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public List<Employee> FindEmp() {
        return employeeMapper.FindEmp();
    }

    @Override
    public Boolean DelbyEmpAccount(Integer employeeAccount) {
        return employeeMapper.DelbyEmpAccount(employeeAccount);
    }

    @Override
    public Boolean addEmployee(Employee employee) {
        return employeeMapper.addEmployee(employee);
    }

    @Override
    public Boolean modifyEmpInfo(Employee employee) {
        return employeeMapper.modifyEmpInfo(employee);
    }

    @Override
    public List<Employee> FindEmpbyAccount(Integer employeeAccount) {
        return employeeMapper.FindEmpbyAccount(employeeAccount);
    }

    @Override
    public Integer EmpTotal() {
        return employeeMapper.EmpTotal();
    }

    @Override
    public List<Employee> FindCoach() {
        return employeeMapper.FindCoach();
    }
}
