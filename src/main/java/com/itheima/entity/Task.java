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
 * @date 2023/2/11 20:49
 */
@Data
@TableName("tb_task")
public class Task {
    @TableId
    private Integer taskId;

    private String taskCode;

    private Integer taskStatus;

    private Integer createType;

    private String innerCode;

    private Integer userId;

    private String userName;

    private Integer regionId;

    @TableField(value = "'desc'")
    private String desc;

    private Integer productTypeId;

    private LocalDateTime expect;

    private Integer assignorId;

    private String addr;
    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    //更新时间
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

}
