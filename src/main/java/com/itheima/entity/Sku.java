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
 * @date 2023/2/16 20:59
 */
@Data
@TableName("tb_sku")
public class Sku {
    @TableId
    private Long skuId;
    private String skuName;
    private String skuImage;
    private Integer price;
    private Integer classId;
    private Integer isDiscount;
    private String unit;
    private String brandName;
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

}
