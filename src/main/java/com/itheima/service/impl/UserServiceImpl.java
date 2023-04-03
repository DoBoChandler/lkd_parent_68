package com.itheima.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.itheima.dao.UserDao;
import com.itheima.entity.User;
import com.itheima.entity.dto.LoginDto;
import com.itheima.entity.vo.LoginUserVo;
import com.itheima.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class UserServiceImpl  implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public LoginUserVo login(LoginDto dto) {

        if(dto == null){
            //参数异常
        }

        LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(User::getLoginName,dto.getLoginName());
        User user = userDao.selectOne(wrapper);

        if(user == null){ //代表用户不存在得

        }
        if(!user.getPassword().equals(dto.getPassword())){ //代表密码错误

        }
        //密码相等
        LoginUserVo loginUserVo = new LoginUserVo();
        loginUserVo.setUserId(user.getId());
        loginUserVo.setUserName(user.getUserName());
        loginUserVo.setRoleCode(user.getRoleCode());
        loginUserVo.setSuccess(true);
        loginUserVo.setMsg("登录成功");
        return loginUserVo;
    }
}
