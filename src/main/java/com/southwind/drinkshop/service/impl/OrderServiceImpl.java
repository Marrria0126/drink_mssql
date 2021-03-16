package com.southwind.drinkshop.service.impl;

import com.southwind.drinkshop.entity.Orders;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.mapper.OrderMapper;
import com.southwind.drinkshop.service.OrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Random;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Yihong
 * @since 2021-03-06
 */
@Service
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Orders> implements OrderService {

    @Override
    public boolean save(Orders orders, User1 user) {
        orders.setUserId(user.getId());
        orders.setLoginName(user.getLoginName());
        String seriaNumber = null;
        try {
            StringBuffer result = new StringBuffer();
            for(int i=0;i<32;i++) {
                result.append(Integer.toHexString(new Random().nextInt(16)));
            }
            seriaNumber =  result.toString().toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
        }
        orders.setSerialnumber(seriaNumber);
        return save(orders);
    }
}
