package com.itheima.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.entity.Node;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TbNodeDao extends BaseMapper<Node> {
}
