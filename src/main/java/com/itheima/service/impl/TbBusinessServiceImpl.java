package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.TbBusinessDao;
import com.itheima.entity.BusinessType;
import com.itheima.service.TbBusinessService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 14:55
 */
@Service
public class TbBusinessServiceImpl extends ServiceImpl<TbBusinessDao, BusinessType> implements TbBusinessService {
}
