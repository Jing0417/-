package com.Li.service.impl;

import com.Li.mapper.AdminMapper;
import com.Li.pojo.Admin;
import com.Li.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author ZhangMing [1157038410@qq.com]
 * @date 2021/8/11
 */

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin adminLogin(Admin admin) {
        return adminMapper.selectByAccountAndPassword(admin);
    }
}
