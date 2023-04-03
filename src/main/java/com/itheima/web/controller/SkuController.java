package com.itheima.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.itheima.entity.Order;
import com.itheima.entity.Sku;
import com.itheima.entity.VendingMachine;
import com.itheima.entity.vo.SkuVo;
import com.itheima.entity.vo.SkuVoo;
import com.itheima.service.OrderService;
import com.itheima.service.SkuService;
import com.itheima.service.VendingMachineService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.ognl.enhance.OrderedReturn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/18 10:33
 */
@RestController
@RequestMapping("/api/vm-service/sku")
@Slf4j
public class SkuController {
    @Autowired
    private SkuService skuService;
    @Autowired
    private VendingMachineService vendingMachineService;
    @Autowired
    private OrderService orderService;
    @GetMapping("businessTop10/{businessId}")
    public List<SkuVoo> getBusinessTop(@PathVariable Integer businessId){
        QueryWrapper<Order> orderQueryWrapper=new QueryWrapper<>();
        orderQueryWrapper.eq("business_id",businessId)
                .select("count(*)","sku_id")
                .groupBy("sku_id")
                .orderByDesc("count(sku_id)");
        List<Order> orders = orderService.list(orderQueryWrapper);
        List<SkuVoo> skuList = orders.stream().limit(10).map(order -> {
            Long skuId = order.getSkuId();
            SkuVoo skuVoo=new SkuVoo();
            Sku sku = skuService.getById(skuId);
            skuVoo.setSkuId(String.valueOf(sku.getSkuId()));
            skuVoo.setSkuName(sku.getSkuName());
            skuVoo.setImage(sku.getSkuImage());
            return skuVoo;
        }).collect(Collectors.toList());
        return skuList;
    }
}
