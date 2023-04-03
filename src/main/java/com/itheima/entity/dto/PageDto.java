package com.itheima.entity.dto;

import lombok.Data;

/**
 * @author Chandler
 * @version 2021.2
 * @date 2023/2/10 9:40
 */
@Data
public class PageDto<T>{
    protected Integer pageIndex;
    protected Integer pageSize;
    protected Long totalPage;
    protected Long totalCount;
    protected T currentPageRecords;

    public static <T> PageDto<T> success(Integer pageIndex,Integer pageSize,Long totalPage,Long totalCount,T object){
        PageDto<T> pageDto=new PageDto<>();
       /* pageDto.setPageIndex(pageIndex);
        pageDto.setPageSize(pageSize);
        pageDto.setTotalPage(totalPage);
        pageDto.setTotalCount(totalCount);
        pageDto.setCurrentPageRecords(object);*/
        pageDto.pageIndex = pageIndex;
        pageDto.pageSize = pageSize;
        pageDto.totalCount = totalCount;
        pageDto.totalPage = totalPage;
        pageDto.currentPageRecords = object;
        return pageDto;
    }
}
