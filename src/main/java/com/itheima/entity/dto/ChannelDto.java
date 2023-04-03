package com.itheima.entity.dto;

import com.itheima.entity.Channel;
import com.itheima.entity.Sku;
import com.itheima.entity.vo.ChannelVo;
import com.itheima.entity.vo.SkuVo;
import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 20:57
 */
@Data
public class ChannelDto extends Channel {
    private SkuVo sku;
    //private ChannelVo channelVo;
}
