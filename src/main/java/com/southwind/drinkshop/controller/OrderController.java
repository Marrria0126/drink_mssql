package com.southwind.drinkshop.controller;


import com.southwind.drinkshop.entity.Orders;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
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
 * @since 2021-03-06
 */
@Controller
@RequestMapping("/orders")
public class OrderController {

    @Autowired
    private OrderService orderService;


    @PostMapping("/settlement3")
    public ModelAndView settlement3(
            String userAddress,
            Float cost,
            HttpSession session
    ) {
        Orders orders = new Orders();
        orders.setCost(cost);
        orders.setUserAddress(userAddress);
        User1 user = (User1) session.getAttribute("user");
        orders.setUserId(user.getId());
        orders.setLoginName(user.getLoginName());
        orderService.save(orders);
        return null;
    }

}

