package com.southwind.drinkshop.enums;

import lombok.Getter;

@Getter
public enum ResultEnum {
//    kucunbuzu
    STOCK_ERROR(1,"Lagermangel");

    private Integer code;
    private String msg;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
