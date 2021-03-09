package com.southwind.drinkshop.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.service.User1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpSession;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Yihong
 * @since 2021-03-10
 */
@Controller
@RequestMapping("/user")
public class User1Controller {

    @Autowired
    private User1Service user1Service;

    /**
     * 登录
     *
     * @param loginName
     * @param password
     * @param session
     * @return
     */
    @PostMapping("/login")
    public String login(String loginName, String password, HttpSession session) {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("login_name", loginName);
        wrapper.eq("password", password);
        User1 user1 = user1Service.getOne(wrapper);
        if (user1 == null) {
            return "login";
        } else {
            session.setAttribute("user", user1);
//            return "redirect:/productCategory/list";
            return "redirect:/productCategory/list";
        }

    }
}


