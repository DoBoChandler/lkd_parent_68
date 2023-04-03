package com.itheima.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itheima.entity.*;
import com.itheima.entity.dto.PageDto;
import com.itheima.entity.dto.VendingMachineDto;
import com.itheima.entity.vo.VmVo;
import com.itheima.service.TbNodeService;
import com.itheima.service.TbRegionService;
import com.itheima.service.VendingMachineService;
import com.itheima.service.VmTypeService;
import com.itheima.utils.exceptions.BusinessException;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 22:13
 */
@RestController
@RequestMapping("/api/vm-service/vm")
public class VendingMachineController {
    @Autowired
    private VendingMachineService vendingMachineService;

    @Autowired
    private TbRegionService tbRegionService;

    @Autowired
    private TbNodeService tbNodeService;
    @Autowired
    private VmTypeService vmTypeService;
    @RequestMapping("search")
    public PageDto<List<VendingMachineDto>> page(int pageIndex,int pageSize,Integer status,String innerCode){
        Page<VendingMachine> page=new Page<>(pageIndex,pageSize);
        Page<VendingMachineDto> pageDto=new Page<>();
        LambdaQueryWrapper<VendingMachine> wrapper = Wrappers.lambdaQuery(VendingMachine.class)
                .eq(status!=null,VendingMachine::getVmStatus,status)
                .like(StringUtils.isNotBlank(innerCode), VendingMachine::getInnerCode, innerCode);
        Page<VendingMachine> vendingMachinePage = vendingMachineService.page(page, wrapper);
        BeanUtils.copyProperties(vendingMachinePage,pageDto,"records");
        List<VendingMachine> records = vendingMachinePage.getRecords();
        List<VendingMachineDto> machineDtoList = records.stream().map((item) -> {
            Long nodeId = item.getNodeId();
            Node node = tbNodeService.getById(nodeId);
            Integer regionId = item.getRegionId();
            Region region = tbRegionService.getById(regionId);
            Integer vmTypeId = item.getVmType();
            Type type = vmTypeService.getById(vmTypeId);
            VendingMachineDto vendingMachineDto = new VendingMachineDto();
            vendingMachineDto.setNode(node);
            vendingMachineDto.setRegion(region);
            vendingMachineDto.setType(type);
            Map<Integer,Boolean> map=new HashMap<>();
            map.put(10001,false);
            map.put(10002,true);
            map.put(10003,true);
            vendingMachineDto.setStatus(map);
            BeanUtils.copyProperties(item, vendingMachineDto);
            return vendingMachineDto;
        }).collect(Collectors.toList());
        pageDto.setRecords(machineDtoList);
        return PageDto.success(pageIndex,pageSize,pageDto.getCurrent(),pageDto.getTotal(),machineDtoList);
    }
    @PostMapping
    public Type add(@RequestBody VmVo vmVo){
        String nodeId = vmVo.getNodeId();
        Integer vmType = vmVo.getVmType();
        Integer createUserId = vmVo.getCreateUserId();
        LambdaQueryWrapper<Type> typeWrapper=new LambdaQueryWrapper<>();
        typeWrapper.eq(vmType!=null,Type::getTypeId,vmType);
        Type type = vmTypeService.getOne(typeWrapper);
        LambdaQueryWrapper<Node> nodeWrapper=new LambdaQueryWrapper<>();
        nodeWrapper.eq(nodeId!=null,Node::getId,nodeId);
        Node node = tbNodeService.getOne(nodeWrapper);
        VendingMachine vendingMachine=new VendingMachine();
        BeanUtils.copyProperties(node,vendingMachine,"id");
        //vendingMachine.setInnerCode(UUID.randomUUID().toString().substring(0,15));
        List<VendingMachine> vendingMachineList = vendingMachineService.list();
        int parseInt = Integer.parseInt(vendingMachineList.get(vendingMachineList.size() - 1).getInnerCode());
        parseInt=parseInt+1;
        String s = String.valueOf(parseInt);
        s="0"+s;
        vendingMachine.setInnerCode(s);
        vendingMachine.setCreateUserId(createUserId);
        vendingMachine.setVmType(vmType);
        vendingMachine.setNodeId(Long.parseLong(nodeId));
        vendingMachineService.save(vendingMachine);
        return type;
    }
    @PutMapping("/{id}/{nodeId}")
    public void updateNodeById(@PathVariable Long id,@PathVariable Long nodeId){
        VendingMachine vendingMachine = vendingMachineService.getById(id);
        vendingMachine.setNodeId(nodeId);
        vendingMachineService.updateById(vendingMachine);
    }
}
