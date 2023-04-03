package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 14:47
 */
@Data
@TableName("tb_region")
public class Region implements Serializable {
    private static final long serialVersionUID = 1L;
    @TableId
    private Integer id;
    private String name;
    private String remark;
    @TableField(exist = false)
    private Integer nodeCount;
}
