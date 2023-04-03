package com.itheima.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/6 14:36
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("tb_node")
public class Node implements Serializable {
    private static final long serialVersionUID = 1L;
    @TableId
    private Long id;
    private String name;
    private String addr;
    private String areaCode;
    private Integer createUserId;
    private Integer regionId;
    private Integer businessId;
    private Integer ownerId;
    private String ownerName;
    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;


    //更新时间
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
