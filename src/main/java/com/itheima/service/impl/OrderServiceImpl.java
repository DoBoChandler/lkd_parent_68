package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.OrderDao;
import com.itheima.entity.Order;
import com.itheima.service.OrderService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/18 11:51
 */
@Service
public class OrderServiceImpl extends ServiceImpl<OrderDao, Order> implements OrderService {
}
