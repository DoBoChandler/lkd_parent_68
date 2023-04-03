package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/10 21:21
 */
@Data
@TableName("tb_task_status_type")
public class TaskStatusType {

    private Integer statusId;

    private String statusName;
}
