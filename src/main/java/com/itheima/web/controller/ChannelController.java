package com.itheima.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.itheima.entity.Channel;
import com.itheima.entity.Sku;
import com.itheima.entity.dto.ChannelDto;
import com.itheima.entity.vo.ChannelVo;
import com.itheima.entity.vo.SkuVo;
import com.itheima.service.ChannelService;
import com.itheima.service.SkuService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
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
 * @date 2023/2/16 20:56
 */
@RestController
@RequestMapping("/api/vm-service/channel")
public class ChannelController {
    @Autowired
    private ChannelService channelService;

    @Autowired
    private SkuService skuService;
    @GetMapping("/channelList/{innerCode}")
    public List<ChannelDto> findChannelByCode(@PathVariable String innerCode){
        LambdaQueryWrapper<Channel> wrapper=new LambdaQueryWrapper<>();
        wrapper.eq(StringUtils.isNotBlank(innerCode),Channel::getInnerCode,innerCode);
        List<Channel> channelList = channelService.list(wrapper);
        List<ChannelDto> channelDtoList = channelList.stream().map((item) -> {
            //ChannelVo channelVo=new ChannelVo();
            //channelVo.setChannelCode(item.getChannelCode());
            //channelVo.setChannelId(item.getChannelId());
            //channelVo.setCurrentCapacity(item.getCurrentCapacity());
            //channelVo.setSkuId(item.getSkuId());
            //channelVo.setMaxCapacity(item.getMaxCapacity());
            Long skuId = item.getSkuId();
            Sku skuServiceById = skuService.getById(skuId);
            SkuVo sku = new SkuVo();
            sku.setSkuName(skuServiceById.getSkuName());
            sku.setSkuImage(skuServiceById.getSkuImage());
            ChannelDto channelDto = new ChannelDto();
            BeanUtils.copyProperties(item, channelDto);
            //channelDto.setChannelVo(channelVo);
            channelDto.setSku(sku);
            return channelDto;
        }).collect(Collectors.toList());

        return channelDtoList;
    }

}
