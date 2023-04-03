package com.itheima.entity.vo;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/11 21:36
 */
@Data
public class TaskVo {
    private String innerCode;
    private Integer userId;
    private String taskCode;
    private Integer taskStatus;
    //private boolean isRepair;
    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime start;
    //更新时间
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime end;
}
