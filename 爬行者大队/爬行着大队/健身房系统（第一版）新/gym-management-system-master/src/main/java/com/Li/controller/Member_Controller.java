package com.Li.controller;

import com.Li.pojo.Member;
import com.Li.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;


//会员Controller
@Controller
@RequestMapping("/member")
public class Member_Controller {

    @Autowired
    private MemberService memberService;

    //新增会员
    @RequestMapping("/addMember")
    public String addMember(Member member) {
        //会员账号&卡号根据年份以及利用String.format方法随机生成
        Random random = new Random();
        //2023为前缀，后面5位在0-100000里随即生成
        String account1 = "2023"+ String.format("%05d", random.nextInt(100000));;
        Integer account = Integer.parseInt(account1);
        //初始密码
        String password = "123456";
        //获取当前日期
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String nowDay = simpleDateFormat.format(date);

        Integer nextClass = member.getCardClass();

        member.setMemberAccount(account);
        member.setMemberPassword(password);
        member.setCardTime(nowDay);
        member.setCardNextClass(nextClass);

        memberService.addVIP(member);
        //重定向到/member/selMember会员管理界面
        return "forward:/member/selMember";
    }

    //删除会员
    @RequestMapping("/delMember")
    public String deleteMember(Integer memberAccount) {
        memberService.DelbyVIPid(memberAccount);
        //重定向到/member/selMember会员管理界面
        return "forward:/member/selMember";
    }
    //修改会员信息
    @RequestMapping("/updateMember")
    public String updateMember(Member member) {
        memberService.modifyVIPInfo(member);
        //重定向到/member/selMember会员管理界面
        return "forward:/member/selMember";
    }
    //查询会员
    @RequestMapping("/selMember")
    public String selectMember(Model model) {
        List<Member> memberList = memberService.FindVIP();
        model.addAttribute("memberList", memberList);
        //直接返回"SelectMember"视图
        return "SelectMember";
    }

    //跳转新增会员页面
    @RequestMapping("/toAddMember")
    public String toAddMember() {
        //直接返回"AddMember"视图
        return "AddMember";
    }

    //跳转会员修改页面
    @RequestMapping("/toUpdateMember")
    public String toUpdateMember(Integer memberAccount, Model model) {
        List<Member> memberList = memberService.FindVIPbyid(memberAccount);
        model.addAttribute("memberList", memberList);
        //直接返回"UpdateMember"视图
        return "UpdateMember";
    }

    //跳转会员卡查询页面
    @RequestMapping("/toSelByCard")
    public String toSelectByCardId() {
        //直接返回"SelectByMemberAccount"视图
        return "SelectByMemberAccount";
    }

    //根据会员卡号查询
    @RequestMapping("/selByCard")
    public String selectByCardId(Model model, Integer memberAccount) {
        List<Member> memberList = memberService.FindVIPbyid(memberAccount);
        //利用三元运算符来判断
        model.addAttribute("memberList", memberList != null ? memberList : null);
        model.addAttribute("noMessage", memberList != null ? null : "会员卡号没有！");
        //直接返回"SelectByMemberAccount"视图
        return "SelectByMemberAccount";
    }

}
