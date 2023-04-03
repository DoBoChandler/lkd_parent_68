package com.itheima.web.controller;

import com.itheima.entity.TaskStatusType;
import com.itheima.service.TaskStatusTypeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/10 21:40
 */
@RestController
@Slf4j
@RequestMapping("/api/task-service/task")
public class TaskStatusTypeDaoController{
    @Autowired
    private TaskStatusTypeService taskStatusTypeService;
    @GetMapping("/allTaskStatus")
    public List<TaskStatusType> selectAll(){
        List<TaskStatusType> list = taskStatusTypeService.list();

        return list;
    }
}
