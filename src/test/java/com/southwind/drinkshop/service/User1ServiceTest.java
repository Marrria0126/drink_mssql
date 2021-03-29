package com.southwind.drinkshop.service;

import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.enums.GenderEnum;
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
        User1 user1 = new User1();
        user1.setLoginName("Marrria");
        user1.setUserName("xiayihong");
        user1.setPassword("qwert");
        user1.setGender(GenderEnum.MAN);
        System.out.println(service.save(user1));
    }

}