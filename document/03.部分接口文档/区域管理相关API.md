## 涉及表：

tb_region（区域表）    tb_node（点位表）



## 区域管理--分页查询

| 请求url  | /api/vm-service/region/search                                |                 |
| -------- | ------------------------------------------------------------ | --------------- |
| 请求类型 | GET                                                          |                 |
| 请求参数 | ?pageIndex=1&pageSize=10&name=城北                           | name 为条件搜索 |
| 返回值   | {"pageIndex":"1","pageSize":"10","totalPage":"1","totalCount":"1","currentPageRecords":[{"id":"1305439798119075841","name":"城北街道","remark":"城北街道","nodeCount":1}]} |                 |





## 区域管理--新增区域

| 请求url  | /api/vm-service/region                                   |      |
| -------- | -------------------------------------------------------- | ---- |
| 请求类型 | POST                                                     |      |
| 请求参数 | {<br/>  "regionName": "xxx",<br/>  "remark": "xxx"<br/>} |      |
| 返回值   | true                                                     |      |

 



## 区域管理--查看区域详情

| 请求url  | /api/vm-service/node/search?pageIndex=1&pageSize=10&regionId=1 |                  |
| -------- | ------------------------------------------------------------ | ---------------- |
| 请求类型 | GET                                                          |                  |
| 请求参数 | pageIndex: 1   pageSize: 10   regionId: 1                    | regionId为区域id |
| 返回值   | {"pageIndex":"1","pageSize":"10","totalPage":"1","totalCount":"3","currentPageRecords":[{"createTime":"2021-01-19T16:29:00","updateTime":"2021-10-20T13:59:07","id":"21","name":"金燕龙写字楼四层","addr":"北京市-市辖区-昌平区-金燕龙写字楼四层","areaCode":"110100","createUserId":1,"ownerId":1,"ownerName":"金燕龙合作商","businessId":3,"regionId":"1","area":null,"vmCount":"28","region":{"id":"1","name":"霍营街道","remark":"霍营街\n","nodeCount":3},"businessType":{"id":3,"name":"写字楼"}},{"createTime":"2022-01-25T10:15:36","updateTime":"2022-01-25T10:15:36","id":"36","name":"2233","addr":"北京市-市辖区-东城区-12","areaCode":"110100","createUserId":1,"ownerId":1,"ownerName":"金燕龙合作商","businessId":1,"regionId":"1","area":null,"vmCount":"2","region":{"id":"1","name":"霍营街道","remark":"霍营街\n","nodeCount":3},"businessType":{"id":1,"name":"学校"}},{"createTime":"2022-05-24T19:54:09","updateTime":"2022-05-24T19:54:09","id":"44","name":"231","addr":"北京市-市辖区-东城区-12312","areaCode":"110100","createUserId":1,"ownerId":1,"ownerName":"金燕龙合作商","businessId":1,"regionId":"1","area":null,"vmCount":"0","region":{"id":"1","name":"霍营街道","remark":"霍营街\n","nodeCount":3},"businessType":{"id":1,"name":"学校"}}]} |                  |



## 区域管理--修改区域

| 请求url  | /api/vm-service/region/1                                     |      |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | PUT                                                          |      |
| 请求参数 | {<br/>  "regionName": "霍营街道",<br/>  "remark": "霍营街\n11"<br/>} |      |
| 返回值   | true                                                         |      |



## 区域管理--区域删除 

注意：区域下存在点位不能删除

| 请求url  | /api/vm-service/region/1 | rest |
| -------- | ------------------------ | ---- |
| 请求类型 | DELETE                   |      |
| 请求参数 | /{id}                    |      |
| 返回值   | true                     |      |

