package com.itheima.entity.vo;

import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/17 10:29
 */
@Data
public class ChannelVo {
    private Integer channelId;
    private String channelCode;
    private Integer currentCapacity;
    private Integer maxCapacity;
    private Integer skuId;
}
