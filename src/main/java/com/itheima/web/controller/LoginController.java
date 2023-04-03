package com.itheima.web.controller;

import com.itheima.entity.dto.LoginDto;
import com.itheima.entity.vo.LoginUserVo;
import com.itheima.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/user-service/user")
public class LoginController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public LoginUserVo login(@RequestBody LoginDto dto){

       return userService.login(dto);
    }
}
