package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.VendingMachineDao;
import com.itheima.entity.VendingMachine;
import com.itheima.service.VendingMachineService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 22:11
 */
@Service
public class VendingMachineServiceImpl extends ServiceImpl<VendingMachineDao, VendingMachine> implements VendingMachineService {
}
