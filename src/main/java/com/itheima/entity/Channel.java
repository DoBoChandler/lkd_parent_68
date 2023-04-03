package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 20:49
 */
@Data
@TableName("tb_channel")
public class Channel {
    private Long channelId;
    private String channelCode;
    private Long skuId;
    private Long vmId;
    private String innerCode;
    private Integer maxCapacity;
    private Integer price;
    private Integer currentCapacity;
    private LocalDateTime lastSupplyTime;
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

}
