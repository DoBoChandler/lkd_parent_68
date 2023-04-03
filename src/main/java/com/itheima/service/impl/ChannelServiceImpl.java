package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.ChannelDao;
import com.itheima.entity.Channel;
import com.itheima.service.ChannelService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 20:55
 */
@Service
public class ChannelServiceImpl extends ServiceImpl<ChannelDao, Channel> implements ChannelService {
}
