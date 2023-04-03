package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.VmTypeDao;
import com.itheima.entity.Type;
import com.itheima.service.VmTypeService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 20:17
 */
@Service
public class VmTypeServiceImpl extends ServiceImpl<VmTypeDao, Type> implements VmTypeService {
}
