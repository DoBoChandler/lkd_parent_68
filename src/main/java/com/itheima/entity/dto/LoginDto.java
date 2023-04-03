package com.itheima.entity.dto;

import lombok.Data;

@Data
public class LoginDto {

    private String loginName;
    private String password;
    private String mobile;
    private String code;
    private String clientToken;
    private Integer loginType;
    private String account;
}
