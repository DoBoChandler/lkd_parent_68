package com.itheima.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.entity.Task;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TaskDao extends BaseMapper<Task> {
}
