package com.itheima;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;


@SpringBootApplication
@MapperScan("com.itheima.dao")
public class LkdApplication {
    public static void main(String[] args) {
        SpringApplication.run(LkdApplication.class,args);
    }
}
