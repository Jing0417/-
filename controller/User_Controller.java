package com.Li.controller;

import com.Li.pojo.ClassOrder;
import com.Li.pojo.ClassTable;
import com.Li.pojo.Member;
import com.Li.service.ClassOrderService;
import com.Li.service.ClassTableService;
import com.Li.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

//会员操控Controller
@Controller
@RequestMapping("/user")
public class User_Controller {

    @Autowired
    private ClassTableService classTableService;

    @Autowired
    private MemberService memberService;

    @Autowired
    private ClassOrderService classOrderService;


    //跳转个人信息页面
    @RequestMapping("/toUserInfo")
    public String toUserInformation(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("member", member);
        return "UserInformation";
    }

    //跳转修改个人信息页面
    @RequestMapping("/toUpdateInfo")
    public String toUpdateUserInformation(HttpSession session, Model model) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("member", member);
        return "UpdateUserInformation";
    }

    //修改个人信息
    @RequestMapping("/updateInfo")
    public String updateUserInformation(HttpSession session, Member member) {
        Member member1 = (Member) session.getAttribute("user");

        member.setMemberAccount(member1.getMemberAccount());
        member.setCardClass(member1.getCardClass());
        member.setCardTime(member1.getCardTime());
        member.setCardNextClass(member1.getCardNextClass());

        memberService.modifyVIPInfo(member);
        return "UserInformation";
    }

    //跳转我的课程页面
    @RequestMapping("/toUserClass")
    public String toUserClass(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("member", member);
        Integer memberAccount = member.getMemberAccount();
        List<ClassOrder> classOrderList = classOrderService.FindClassbyAccount(memberAccount);
        model.addAttribute("classOrderList", classOrderList);
        return "UserClass";
    }

// 退课
    @RequestMapping("delUserClass")
    public String deleteUserClass(Integer classOrderId, HttpSession session, Integer classId) {
        //获取classTime
        Member member = (Member) session.getAttribute("user");
        ClassOrder classOrder = classOrderService.CheckVIPhasClass(classId, member.getMemberAccount());
        ClassTable classTable = classTableService.FindClassbyid(classOrder.getClassId());
        Integer classTime = Integer.parseInt(classTable.getClassTime());
        Integer cardNextClass = member.getCardNextClass();
        //执行退课流程：消耗课时返还
        Integer c = cardNextClass + classTime;
        member.setCardNextClass(c);
        memberService.modifyVIPInfo(member);
        //删除classOrder记录
        classOrderService.DelClassbyid(classOrderId);
        return "forward:/user/toUserClass";
    }

    //跳转报名选课页面
    @RequestMapping("/toApplyClass")
    public String toUserApplyClass(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        List<ClassTable> classList = classTableService.Findschedule();
        model.addAttribute("member", member);
        model.addAttribute("classList", classList);
        return "UserApplyClass";
    }

    // 报名选课
    @RequestMapping("/applyClass")
    public String userApplyClass(Model model, Integer classId, HttpSession session) {
        ClassTable classTable = classTableService.FindClassbyid(classId);
        Member member = (Member) session.getAttribute("user");

        Integer classId1 = classTable.getClassId();
        String className = classTable.getClassName();
        String coach = classTable.getCoach();
        Integer classTime = Integer.parseInt(classTable.getClassTime());
        String classBegin = classTable.getClassBegin();
        String memberName = member.getMemberName();
        Integer memberAccount = member.getMemberAccount();
        Integer cardNextClass = member.getCardNextClass();


        ClassOrder classOrder = new ClassOrder(classId1, className, coach, memberName, memberAccount, classBegin);
       /* Integer memberAccount1 = member.getMemberAccount();*/
        //查询用户是否已报名此课程
        ClassOrder classOrderchecked = classOrderService.CheckVIPhasClass(classId1, memberAccount);
        Integer remaining = cardNextClass - classTime;
        Integer RemainingChecked;
        //如果尚未报名且扣除后剩余课时大于等于0，则在数据库生成classOrder记录
        if (classOrderchecked == null &&  remaining >= 0) {
            classOrderService.addClass(classOrder);
            member.setCardNextClass(remaining);
            memberService.modifyVIPInfo(member);
        }
        return "forward:/user/toUserClass";
    }

}
