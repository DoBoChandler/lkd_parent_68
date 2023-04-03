package com.itheima.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.TbNodeDao;
import com.itheima.entity.Node;
import com.itheima.service.TbNodeService;
import org.springframework.stereotype.Service;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 15:07
 */
@Service
public class TbNodeServiceImpl extends ServiceImpl<TbNodeDao, Node> implements TbNodeService {
}
