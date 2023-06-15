package com.Li.controller;

import com.Li.pojo.Admin;
import com.Li.pojo.Member;
import com.Li.service.AdminService;
import com.Li.service.EmployeeService;
import com.Li.service.EquipmentService;
import com.Li.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

//登陆Controller
@Controller
public class Login_Controller {

    @Autowired
    private MemberService memberService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private EquipmentService equipmentService;

    //第一步：主页，默认为管理员登陆界面
    @RequestMapping("/")
    public String toAdminLogin() {
        //直接返回"AdminLogin"视图
        return "AdminLogin";
    }


    //第二步：进行管理员登录界面判断～
    @RequestMapping("/adminLogin")
    public String adminLogin(Admin admin, Model model, HttpSession session) {
        Admin admin1 = adminService.adminLogin(admin);
        if (admin1 != null) {
            // 获取会员人数
            Integer VIPCount = memberService.VIPTotal();
//
            // 获取员工人数
            Integer EmpTotal = employeeService.EmpTotal();

            // 计算健身房总人数
            Integer humanTotal = VIPCount + EmpTotal;

            // 获取器材数
            Integer EquTotal = equipmentService.EquTotal();

            // 将人数信息存入模型和会话
            model.addAttribute("memberTotal", VIPCount);
            model.addAttribute("employeeTotal", EmpTotal);
            model.addAttribute("humanTotal", humanTotal);
            model.addAttribute("equipmentTotal", EquTotal);

            session.setAttribute("memberTotal", VIPCount);
            session.setAttribute("employeeTotal", EmpTotal);
            session.setAttribute("humanTotal", humanTotal);
            session.setAttribute("equipmentTotal", EquTotal);

            // 转发到"AdminMain"视图
            return "AdminMain";
           // return "forward:/admin/main";
        }

        model.addAttribute("msg", "您输入的账号或密码有误，请检查并重新输入");
        // 转发到"AdminLogin"视图
        return "forward:/";
    }


    //会员：跳会员登录页面～
    @RequestMapping("/toUserLogin")
    public String toUserLogin() {
        //直接返回"UserLogin"视图
        return "UserLogin";
    }

    //会员：会员登录判断
    @RequestMapping("/userLogin")
    public String userLogin(Member member, Model model, HttpSession session) {
        //同上从数据库判断账号密码
        Member member1 = memberService.userLogin(member);
        if (member1 != null) {
            model.addAttribute("member", member1);
            session.setAttribute("user", member1);
            //直接返回"UserMain"视图
            return "UserMain";
        }
        model.addAttribute("msg", "您输入的账号或密码有误，请重新输入!");
        //直接返回"UserLogin"视图
        return "UserLogin";
    }

    //跳管理员主页～
    @RequestMapping("/toAdminMain")
    public String toAdminMain(Model model, HttpSession session) {
        String[] attributes = {"memberTotal", "employeeTotal", "humanTotal", "equipmentTotal"};

        for (String attribute : attributes) {
            Object value = session.getAttribute(attribute);
            model.addAttribute(attribute, value);
        }

        return "AdminMain";
    }

//Spring MVC 在处理模型属性时会自动进行类型转换，无需创建变量

    //跳会员主页～
    @RequestMapping("/toUserMain")
    public String toUserMain(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("member", member);
        //直接返回"UserMain"视图
        return "UserMain";
    }

}
