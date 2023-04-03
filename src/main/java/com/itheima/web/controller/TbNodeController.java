package com.itheima.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itheima.entity.BusinessType;
import com.itheima.entity.Node;
import com.itheima.entity.Region;
import com.itheima.entity.dto.NodeDto;
import com.itheima.entity.dto.PageDto;
import com.itheima.service.TbBusinessService;
import com.itheima.service.TbNodeService;
import com.itheima.service.TbRegionService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 15:17
 */
@RestController
@RequestMapping("/api/vm-service/node")
@Slf4j
public class TbNodeController {
    @Autowired
    private TbNodeService tbNodeService;
    @Autowired
    private TbRegionService tbRegionService;
    @Autowired
    private TbBusinessService tbBusinessService;

    /**
     *
     * @param pageIndex
     * @param pageSize
     * @param name
     * @param regionId
     * @return
     */
    @GetMapping("/search")
    public PageDto<List<NodeDto>> getPage(int pageIndex,int pageSize,String name,Integer regionId){
        //创建分页对象，起始页和页面大小放入
        Page<Node> nodePage=new Page<>(pageIndex,pageSize);
        //发现是多表查询，所以创建dto
        Page<NodeDto> nodeDtoPage=new Page<>(pageIndex,pageSize);
        //添加查询条件
        LambdaQueryWrapper<Node> tbNodeWrapper=new LambdaQueryWrapper<>();
        //通过regionId
        tbNodeWrapper.eq(regionId!=null, Node::getRegionId,regionId);
        //通过名字进行模糊查询
        tbNodeWrapper.like(StringUtils.isNotEmpty(name), Node::getName,name);
        //调用service中的分页方法
        Page<Node> tbNodePage = tbNodeService.page(nodePage, tbNodeWrapper);
        //将nodePage中除了records的记录全部拷贝到dtoPage中
        BeanUtils.copyProperties(tbNodePage,nodeDtoPage,"records");
        //获取原来的records
        List<Node> records = tbNodePage.getRecords();
        //遍历并添加条件然后再存入另一个集合
        List<NodeDto> nodeDtoList = records.stream().map((item) -> {
            //创建dto对象
            NodeDto nodeDto = new NodeDto();
            //通过下面两个表的id，获取两个表的对象
            Region tbRegion = tbRegionService.getById(item.getRegionId());
            //tbRegionId.setNodeCount(2);
            BusinessType tbBusiness = tbBusinessService.getById(item.getBusinessId());
            //将获取到的两个表的对象设置到dto类中
            nodeDto.setRegion(tbRegion);
            nodeDto.setBusinessType(tbBusiness);
            //额外字段也设置进去
            //nodeDto.setVmCount(22);
            //返回这个对象
            //将每一条内容拷贝到新的dto对象中，把dto当作新的载体
            BeanUtils.copyProperties(item, nodeDto);
            return nodeDto;
        }).collect(Collectors.toList());
        //nodeDtoPage.setTotal(10);
        //把新的记录放到新的page对象...dtoPage
        nodeDtoPage.setRecords(nodeDtoList);
        return PageDto.success(pageIndex,pageSize,nodeDtoPage.getCurrent(),nodeDtoPage.getTotal(),nodeDtoList);
    }
}
