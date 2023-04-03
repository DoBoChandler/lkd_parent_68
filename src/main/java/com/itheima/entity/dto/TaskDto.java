package com.itheima.entity.dto;

import com.itheima.entity.Task;
import com.itheima.entity.TaskDetail;
import com.itheima.entity.TaskType;
import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/11 21:20
 */
@Data
public class TaskDto extends Task {
    private TaskType taskType;

    private TaskDetail details;
}
