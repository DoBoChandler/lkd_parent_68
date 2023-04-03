package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.TaskStatusTypeDao;
import com.itheima.dao.TaskTypeDao;
import com.itheima.entity.TaskType;
import com.itheima.service.TaskTypeService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/11 21:07
 */
@Service
public class TaskTypeServiceImpl extends ServiceImpl<TaskTypeDao, TaskType> implements TaskTypeService {
}
