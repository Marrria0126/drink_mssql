package com.southwind.drinkshop.service;

import com.southwind.drinkshop.entity.User1;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class User1ServiceTest {

    @Autowired
    private User1Service service;
    @Test
    void test(){
        User1 user = new User1();
        user.setLoginName("jq1");
        user.setUserName("123");
        user.setPassword("123");
        user.setGender(1);
        System.out.println(service.save(user));


    }

}