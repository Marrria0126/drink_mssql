package com.southwind.drinkshop.controller;


import com.southwind.drinkshop.entity.Orders;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.service.CartService;
import com.southwind.drinkshop.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
@Controller
@RequestMapping("//orders")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;

    @Autowired
    private CartService cartService;

    @PostMapping("/settlement3")
    public ModelAndView settlement3(Orders orders, HttpSession session, String address, String remark) {
        User1 user = (User1) session.getAttribute("user");
        ordersService.save(orders,user,address,remark);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("settlement3");
        modelAndView.addObject("cartList",cartService.findAllCartVOByUserId(user.getId()));
        modelAndView.addObject("orders",orders);
        return modelAndView;
    }
    @GetMapping("/list")
    public ModelAndView list(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("orderList");
        User1 user = (User1) session.getAttribute("user");
        modelAndView.addObject("list",ordersService.findAllOrederVOByUserId(user.getId()));
        modelAndView.addObject("cartList",cartService.findAllCartVOByUserId(user.getId()));
        return modelAndView;
    }
}
