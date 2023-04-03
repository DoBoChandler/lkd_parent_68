package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/11 20:57
 */
@Data
@TableName("tb_task_type")
public class TaskType {
    private Integer typeId;

    private String typeName;

    private Integer type;
}
