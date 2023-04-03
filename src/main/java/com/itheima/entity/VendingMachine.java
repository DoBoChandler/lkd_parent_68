package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 21:41
 */
@Data
@TableName("tb_vending_machine")
public class VendingMachine {
    @TableId
    private Long id;
    private Integer vmType;
    private String innerCode;
    private Long nodeId;
    private Integer vmStatus;
    private Date lastSupplyTime;
    private String cityCode;
    private Integer areaId;
    private Integer createUserId;
    private String createUserName;
    private Integer businessId;
    private Integer regionId;
    private Integer ownerId;
    private String ownerName;
    private String clientId;
    private Double longitudes;
    private Double latitude;
    @TableField(exist = false)
    private boolean fault;
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
