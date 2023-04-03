package com.itheima.web.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itheima.entity.Region;
import com.itheima.service.TbRegionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/8 20:53
 */
@RestController
@RequestMapping("/api/vm-service/region")
@Slf4j
public class TbRegionController {
    @Autowired
    private TbRegionService tbRegionService;
    @GetMapping("/search")
    public Page<Region> page(Integer pageIndex, Integer pageSize, String name){
        Page<Region> regionPage = tbRegionService.page(pageIndex, pageSize, name);
        return regionPage;
    }
}
