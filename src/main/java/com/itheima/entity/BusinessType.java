package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 14:49
 */
@Data
@TableName("tb_business")
public class BusinessType implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
    private String name;
}
