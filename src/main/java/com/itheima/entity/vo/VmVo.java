package com.itheima.entity.vo;

import com.itheima.entity.Type;
import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/17 20:18
 */
@Data
public class VmVo extends Type {
    private Integer vmType;
    private String nodeId;
    private Integer createUserId;
}
