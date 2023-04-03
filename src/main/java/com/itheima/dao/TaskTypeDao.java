package com.itheima.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.entity.TaskType;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TaskTypeDao extends BaseMapper<TaskType> {
}
