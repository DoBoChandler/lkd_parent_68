package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.TaskStatusTypeDao;
import com.itheima.dao.TbNodeDao;
import com.itheima.entity.TaskStatusType;
import com.itheima.service.TaskStatusTypeService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/10 21:25
 */
@Service
public class TaskStatusTypeServiceImpl extends ServiceImpl<TaskStatusTypeDao, TaskStatusType> implements TaskStatusTypeService {
}
