package com.itheima.service;

import com.itheima.entity.dto.LoginDto;
import com.itheima.entity.vo.LoginUserVo;

public interface UserService {
    LoginUserVo login(LoginDto dto);
}
