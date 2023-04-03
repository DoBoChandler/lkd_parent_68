package com.itheima.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itheima.entity.Type;
import com.itheima.entity.dto.PageDto;
import com.itheima.service.VmTypeService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 20:18
 */
@RestController
@RequestMapping("/api/vm-service/vmType")
@Slf4j
public class VmTypeController {
    @Autowired
    private VmTypeService vmTypeService;

    @GetMapping("/search")
    public PageDto<List<Type>> page(int pageIndex, int pageSize, String name){
        Page<Type> page=new Page<>(pageIndex,pageSize);
        LambdaQueryWrapper<Type> wrapper=new LambdaQueryWrapper<>();
        wrapper.like(StringUtils.isNotBlank(name), Type::getName,name);
        Page<Type> vmTypePage = vmTypeService.page(page, wrapper);
        List<Type> records = vmTypePage.getRecords();
        return PageDto.success(pageIndex,pageSize,vmTypePage.getCurrent(),vmTypePage.getTotal(),records);
    }
    @GetMapping("/{typeId}")
    public Type getByTypeId(@PathVariable Integer typeId){
        Type type = vmTypeService.getById(typeId);
        return type;
    }
}
