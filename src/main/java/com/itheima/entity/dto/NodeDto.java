package com.itheima.entity.dto;

import com.itheima.entity.BusinessType;
import com.itheima.entity.Node;
import com.itheima.entity.Region;
import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 15:02
 */
@Data
public class NodeDto extends Node {
    private Region region;
    private BusinessType businessType;
    private String area;
    private Integer vmCount;
}
