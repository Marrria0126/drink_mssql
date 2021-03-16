package com.southwind.drinkshop.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.southwind.drinkshop.entity.Orders;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.entity.UserAddress;
import com.southwind.drinkshop.mapper.OrderMapper;
import com.southwind.drinkshop.mapper.UserAddressMapper;
import com.southwind.drinkshop.service.OrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    private UserAddressMapper userAddressMapper;

    @Override
    public boolean save(Orders orders, User1 user,String address,String remark) {

        //判断是新地址还是老地址
        if(orders.getUserAddress().equals("newAddress")){
            //存入数据库
            UserAddress userAddress = new UserAddress();
            userAddress.setAddress(address);
            userAddress.setRemark(remark);
            userAddress.setIsdefault(1);
            userAddress.setUserId(user.getId());

            QueryWrapper wrapper = new QueryWrapper();
            wrapper.eq("isdefault",1);
            UserAddress oldDefault = userAddressMapper.selectOne(wrapper);
            oldDefault.setIsdefault(0);
            userAddressMapper.updateById(oldDefault);
            userAddressMapper.insert(userAddress);
            orders.setUserAddress(address);
        }

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
