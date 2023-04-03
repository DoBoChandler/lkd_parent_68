package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.SkuDao;
import com.itheima.entity.Sku;
import com.itheima.service.SkuService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 21:03
 */
@Service
public class SkuServiceImpl extends ServiceImpl<SkuDao, Sku> implements SkuService {
}
