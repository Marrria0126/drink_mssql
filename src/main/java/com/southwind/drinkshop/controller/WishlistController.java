package com.southwind.drinkshop.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.service.CartService;
import com.southwind.drinkshop.service.UserAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.entity.Wishlist;
import com.southwind.drinkshop.service.CartService;
import com.southwind.drinkshop.service.UserAddressService;
import com.southwind.drinkshop.service.WishlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Yihong
 * @since 2021-04-19
 */
//@Controller
//@RequestMapping("/wishlist")
//public class WishlistController {
//
//    @Autowired
//    private WishlistService wishlistService;
//    @Autowired
//    private CartService cartService;
//
//    @GetMapping("/list")
//    public ModelAndView list(HttpSession session){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("wishlistList");
//        User1 user = (User1)session.getAttribute("user");
//        modelAndView.addObject("cartList",cartService.findAllCartVOByUserId(user.getId()));
//        QueryWrapper wrapper = new QueryWrapper();
//        wrapper.eq("user_id",user.getId());
//        modelAndView.addObject("listList",wishlistService.list(wrapper));
//        return modelAndView;
//    }
//}

@Controller
@RequestMapping("/wishlist")
public class WishlistController {

    @Autowired
    private WishlistService wishlistService;
    @Autowired
    private CartService cartService;

    @GetMapping("/list")
    public ModelAndView list(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("wishlistList");
        User1 user = (User1) session.getAttribute("user");
        modelAndView.addObject("cartList", cartService.findAllCartVOByUserId(user.getId()));
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("user_id", user.getId());
        modelAndView.addObject("wishList", wishlistService.list(wrapper));
        return modelAndView;
    }
}

