package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.TaskDetailDao;
import com.itheima.entity.TaskDetail;
import com.itheima.service.TaskDetailService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 18:06
 */
@Service
public class TaskDetailServiceImpl extends ServiceImpl<TaskDetailDao, TaskDetail> implements TaskDetailService {
}
