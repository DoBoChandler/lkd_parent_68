package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 20:12
 */
@Data
@TableName("tb_vm_type")
public class Type {
    @TableId
    private Integer typeId;

    private Integer vmRow;

    private Integer vmCol;

    private String name;

    private Integer channelMaxCapacity;

    private String model;

    private String image;
}
