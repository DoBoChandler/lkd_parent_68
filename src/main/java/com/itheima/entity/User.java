package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("tb_user")
public class User {
    private Integer id;

    private Integer roleId;

    private String userName;

    private String loginName;

    private String password;

    @TableField(exist = false)
    private Integer areaId;

    private String secret;

    private String roleCode;

    private String mobile;

    @TableField(exist = false)
    private Integer companyId;
}
