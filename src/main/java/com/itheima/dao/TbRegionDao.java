package com.itheima.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.entity.Region;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TbRegionDao extends BaseMapper<Region> {
}
