package com.itheima.utils.utils;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/5 16:47
 * 基于线程变量容器的线程共享数据工具类
 * 基于ThreadLocal封装工具类，用于在线程内部的多个方法间传递数据，eg：登录的用户ID
 * 该工具类保证了唯一性之一：ThreadLocal唯一
 * 另外一个唯一性：使用同一个线程，需要其他代码本身（Filter、Controller、Service、mapper等方法调用）来实现
 */
public class ThreadLocalUtil {
    private static ThreadLocal<Long> threadLocal = new ThreadLocal<>();

    /**
     * 设置值
     *
     * @param id
     */
    public static void setCurrentId(Long id) {
        threadLocal.set(id);
    }

    /**
     * 获取值
     *
     * @return
     */
    public static Long getCurrentId() {
        return threadLocal.get();
    }
}
