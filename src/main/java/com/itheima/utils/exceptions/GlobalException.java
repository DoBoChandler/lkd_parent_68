package com.itheima.utils.exceptions;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/4 19:27
 */
@RestControllerAdvice //=@ControllerAdvice + @ResponseBody
@Slf4j
public class GlobalException  {
    /**
     *编写方法，处理指定类型的异常。异常对象会自动赋值给形参
     * @param e
     * @return
     */
    @ExceptionHandler(BusinessException.class)
    public String doBusinessException(BusinessException e){
        //显示堆栈信息
        e.printStackTrace();
        log.info("出现了业务异常:{}",e.getMessage());
        //把异常信息响应给用户
        return e.getMessage();
    }

    @ExceptionHandler(Exception.class)
    public String  doException(Exception e){
        e.printStackTrace();
        log.info("出现了未知的异常:{}",e.getMessage());
        return e.getMessage();
    }

}
