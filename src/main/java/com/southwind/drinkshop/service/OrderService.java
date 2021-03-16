package com.southwind.drinkshop.service;

import com.southwind.drinkshop.entity.Orders;
import com.baomidou.mybatisplus.extension.service.IService;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.vo.OrderVO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Yihong
 * @since 2021-03-06
 */
public interface OrderService extends IService<Orders> {
    public boolean save(Orders orders, User1 user, String address,String remark);
    public List<OrderVO> findAllOrederVOByUserId(Integer id);
    }
