package com.itheima.entity.dto;

import com.itheima.entity.*;
import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/16 22:15
 */
@Data
public class VendingMachineDto extends VendingMachine {
    private Node node;
    private Region region;
    private Type type;
    private Map<Integer,Boolean> status;
}
