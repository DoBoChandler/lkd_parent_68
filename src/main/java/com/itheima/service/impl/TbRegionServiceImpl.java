package com.itheima.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.TbRegionDao;
import com.itheima.entity.Region;
import com.itheima.service.TbRegionService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 15:06
 */
@Service
public class TbRegionServiceImpl extends ServiceImpl<TbRegionDao, Region> implements TbRegionService {
    @Override
    public Page<Region> page(Integer pageIndex, Integer pageSize, String name) {
        Page<Region> pageInfo=new Page<>(pageIndex,pageSize);
        LambdaQueryWrapper<Region> wrapper = Wrappers.lambdaQuery(Region.class)
                .like(StringUtils.isNotBlank(name), Region::getName, name);
        Page<Region> regionPage = this.page(pageInfo, wrapper);
        return regionPage;
    }
}
