package com.itheima.web.controller;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itheima.entity.Task;
import com.itheima.entity.TaskDetail;
import com.itheima.entity.TaskType;
import com.itheima.entity.dto.PageDto;
import com.itheima.entity.dto.TaskDto;
import com.itheima.entity.vo.TaskVo;
import com.itheima.service.TaskDetailService;
import com.itheima.service.TaskService;
import com.itheima.service.TaskTypeService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/11 21:13
 */
@RestController
@Slf4j
@RequestMapping("/api/task-service/task")
public class TaskController {
    @Autowired
    private TaskTypeService taskTypeService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private TaskDetailService taskDetailService;
    @GetMapping("/search")
    public PageDto<List<TaskDto>>
    page(int pageIndex, int pageSize, String innerCode,
         Integer userId, boolean isRepair, Date start, Date end){
        Page<Task> page=new Page<>(pageIndex,pageSize);
        Page<TaskDto> taskDtoPage=new Page<>();

        String startTimeString = DateUtil.format(start,"yyyy-MM-dd HH:mm:ss");
        String endTimeString = DateUtil.format(end, "yyyy-MM-dd HH:mm:ss");

        LambdaQueryWrapper<Task> taskWrapper=new LambdaQueryWrapper<>();
        taskWrapper.like(StringUtils.isNotBlank(innerCode), Task::getInnerCode, innerCode)
                .like(userId != null, Task::getUserId, userId)
                .apply(StringUtils.isNotBlank(startTimeString),
                        "date_format (start_time,'%Y-%m-%d %H:%i:%s') >= date_format('" + startTimeString + "','%Y-%m-%d %H:%i:%s')")
                .apply(StringUtils.isNotBlank(endTimeString),
                        "date_format (end_time,'%Y-%m-%d %H:%i:%s') <= date_format('" + endTimeString + "','%Y-%m-%d %H:%i:%s')");
        Page<Task> taskPage = taskService.page(page, taskWrapper);
        BeanUtils.copyProperties(taskPage,taskDtoPage,"records");
        List<Task> records = page.getRecords();
        List<TaskDto> taskDtoList = records.stream().map((item) -> {
            TaskDto taskDto = new TaskDto();
            BeanUtils.copyProperties(item, taskDto);
            Integer productTypeId = item.getProductTypeId();
            LambdaQueryWrapper<TaskType> eq = Wrappers.lambdaQuery(TaskType.class).eq(productTypeId != null, TaskType::getTypeId, productTypeId);
            TaskType type = taskTypeService.getOne(eq);
            taskDto.setTaskType(type);
            return taskDto;
        }).collect(Collectors.toList());
        taskDtoPage.setRecords(taskDtoList);
        return PageDto.success(pageIndex,pageSize,taskDtoPage.getCurrent(),taskDtoPage.getTotal(),taskDtoList);
    }
    @GetMapping("/taskInfo/{taskId}")
    public TaskDto finfById(@PathVariable Integer taskId){
        Task task = taskService.getById(taskId);
        TaskDto taskDto=new TaskDto();
        BeanUtils.copyProperties(task,taskDto);
        LambdaQueryWrapper<TaskDetail> wrapper=new LambdaQueryWrapper<>();
        wrapper.eq(taskId != null, TaskDetail::getTaskId, taskId);
        TaskDetail taskDetail = taskDetailService.getOne(wrapper);
        taskDto.setDetails(taskDetail);
        return taskDto;
    }
    @PostMapping("/create")
    public void saveDetail(@RequestBody TaskDto taskDto){
        //没有运营人员和工单类型，还实现不了
        //taskService.save(taskDto);
    }
}
