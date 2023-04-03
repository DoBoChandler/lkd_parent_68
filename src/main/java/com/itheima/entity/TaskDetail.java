package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.beans.IntrospectionException;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 18:01
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("tb_task_details")
public class TaskDetail {
    private Integer detailsId;
    private Integer taskId;
    private String channelCode;
    private Integer expectCapacity;
    private Integer skuId;
    private String skuName;
    private String skuImage;
}
