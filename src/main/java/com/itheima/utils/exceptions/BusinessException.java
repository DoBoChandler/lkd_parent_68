package com.itheima.utils.exceptions;

/**
 * 业务异常
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/4 19:25
 */
public class BusinessException extends RuntimeException{
    public BusinessException(String message) {
        super(message);
    }

    public BusinessException(String message, Throwable cause) {
        super(message, cause);
    }
}
