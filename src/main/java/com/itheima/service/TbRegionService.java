package com.itheima.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.itheima.entity.Region;

public interface TbRegionService extends IService<Region> {

    public Page<Region> page(Integer pageIndex, Integer pageSize, String name);
}
