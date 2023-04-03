package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/18 11:22
 */
@Data
@TableName("tb_order")
public class Order {
    @TableId
    private Long Id;
    private String orderNo;
    private String thirdNo;
    private String innerCode;
    private Long skuId;
    private String skuName;
    private Integer classId;
    private Integer status;
    private Integer amount;
    private Integer price;
    private String payType;
    private Integer payStatus;
    private Integer bill;
    private String addr;
    private Long regionId;
    private String regionName;
    private Integer businessId;
    private String businessName;
    private Integer ownerId;
    private String openId;
    private Long nodeId;
    private String nodeName;
    private String cancelDesc;
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
