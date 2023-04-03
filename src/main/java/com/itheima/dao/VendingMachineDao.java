package com.itheima.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.entity.VendingMachine;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VendingMachineDao extends BaseMapper<VendingMachine> {
}
