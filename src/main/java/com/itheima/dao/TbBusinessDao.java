package com.itheima.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.entity.BusinessType;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TbBusinessDao extends BaseMapper<BusinessType> {
}
