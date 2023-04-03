## 点位管理-点位分页展示

| 请求url  | /api/vm-service/node/search                                  |      |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | GET                                                          |      |
| 请求参数 | ?pageIndex=1&pageSize=10&name=111&regionId=1305439798119075841 |      |
| 返回值   | {<br/>  "pageIndex": "1",<br/>  "pageSize": "10",<br/>  "totalPage": "3",<br/>  "totalCount": "27",<br/>  "currentPageRecords": [<br/>    {<br/>      "createTime": "2020-09-10T09:41:02",<br/>      "updateTime": "2022-05-28T19:42:59",<br/>      "id": "1",<br/>      "name": "北京悦荟广场",<br/>      "addr": "北京市-市辖区-海淀区-北京悦荟广场1",<br/>      "areaCode": "110100",<br/>      "createUserId": 1,<br/>      "ownerId": 1,<br/>      "ownerName": "金燕龙合作商",<br/>      "businessId": 1,<br/>      "regionId": "1357163508105482242",<br/>      "area": null,<br/>      "vmCount": "22",<br/>      "region": {<br/>        "id": "1357163508105482242",<br/>        "name": "北京1街道",<br/>        "remark": "北京街道",<br/>        "nodeCount": 2<br/>      },<br/>      "businessType": {<br/>        "id": 1,<br/>        "name": "学校"<br/>      }<br/>    }<br/>  ]<br/>} |      |





## 点位管理-新增点位

1.显示所属商圈

| 请求url  | /api/vm-service/businessType                                 |      |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | get                                                          |      |
| 请求参数 | 无                                                           |      |
| 返回值   | [{"id":1,"name":"学校"},{"id":2,"name":"工厂"},{"id":3,"name":"写字楼"},{"id":4,"name":"交通枢纽"}] |      |

2.添加保存

| 请求url  | /api/vm-service/node                                         |      |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | POST                                                         |      |
| 请求参数 | {<br/>  "name": "xxxx",<br/>  "addr": "天津市-市辖区-河东区-1111",<br/>  "areaCode": 120100,<br/>  "createUserId": 1,<br/>  "regionId": "1",<br/>  "businessId": 1,<br/>  "ownerId": 4,<br/>  "ownerName": "天华物业"<br/>} |      |
| 返回值   | true                                                         |      |



## 点位管理-查看点位详情

| 请求url  | /api/vm-service/node/vmList/6                                | rest |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | GET                                                          |      |
| 请求参数 | /{id}                                                        |      |
| 返回值   | [{"createTime":"2020-12-19T10:40:56","updateTime":"2020-12-19T10:40:56","id":"34","vmType":1,"innerCode":"01000019","nodeId":"6","vmStatus":0,"lastSupplyTime":"2000-01-01T00:00:00","cityCode":"010","areaId":null,"createUserId":"1","createUserName":"admin","clientId":"bf71c9634f4c65e9f9cf5b437b93c164","longitudes":0.0,"latitude":0.0,"ownerId":1,"ownerName":"金燕龙合作商","businessId":2,"regionId":"1357163562195226625","type":{"typeId":1,"vmRow":10,"vmCol":10,"name":"饮料机","channelMaxCapacity":10,"model":"AC204","image":"http://lkd2-java.itheima.net/image/售货机.jpg"},"node":{"createTime":"2020-12-18T11:45:28","updateTime":"2021-10-20T13:59:07","id":"6","name":"枫蓝国际购物中心","addr":"北京市-市辖区-西城区-枫蓝国际购物中心","areaCode":"110100","createUserId":1,"ownerId":1,"ownerName":"金燕龙合作商","businessId":2,"regionId":"1357163562195226625","area":null,"vmCount":"2","region":{"id":"1357163562195226625","name":"北京3街道","remark":"北京3街道","nodeCount":1},"businessType":{"id":2,"name":"工厂"}},"region":{"id":"1357163562195226625","name":"北京3街道","remark":"北京3街道","nodeCount":1},"fault":null,"status":null},{"createTime":"2020-12-19T10:40:59","updateTime":"2020-12-19T10:40:59","id":"35","vmType":1,"innerCode":"01000020","nodeId":"6","vmStatus":0,"lastSupplyTime":"2000-01-01T00:00:00","cityCode":"010","areaId":null,"createUserId":"1","createUserName":"admin","clientId":"a4f66c0ec382d690709e3626efaea16f","longitudes":0.0,"latitude":0.0,"ownerId":1,"ownerName":"金燕龙合作商","businessId":2,"regionId":"1357163562195226625","type":{"typeId":1,"vmRow":10,"vmCol":10,"name":"饮料机","channelMaxCapacity":10,"model":"AC204","image":"http://lkd2-java.itheima.net/image/售货机.jpg"},"node":{"createTime":"2020-12-18T11:45:28","updateTime":"2021-10-20T13:59:07","id":"6","name":"枫蓝国际购物中心","addr":"北京市-市辖区-西城区-枫蓝国际购物中心","areaCode":"110100","createUserId":1,"ownerId":1,"ownerName":"金燕龙合作商","businessId":2,"regionId":"1357163562195226625","area":null,"vmCount":"2","region":{"id":"1357163562195226625","name":"北京3街道","remark":"北京3街道","nodeCount":1},"businessType":{"id":2,"name":"工厂"}},"region":{"id":"1357163562195226625","name":"北京3街道","remark":"北京3街道","nodeCount":1},"fault":null,"status":null}] |      |





## 点位管理-点位删除

| 请求url  | /api/vm-service/node/6   | rest   |
| -------- | ------------------------ | ------ |
| 请求类型 | DELETE                   |        |
| 请求参数 | /{id}                    |        |
| 返回值   | 点位下有售货机，不可删除 | String |

## 点位管理-点位修改

| 请求url  | /api/vm-service/node/1                                       | rest      |
| -------- | ------------------------------------------------------------ | --------- |
| 请求类型 | PUT                                                          |           |
| 请求参数 | {<br/>  "name": "xxxx",<br/>  "addr": "天津市-市辖区-河东区-1111",<br/>  "areaCode": 120100,<br/>  "createUserId": 1,<br/>  "regionId": "1",<br/>  "businessId": 1,<br/>  "ownerId": 4,<br/>  "ownerName": "天华物业"<br/>} | 还有/{id} |
| 返回值   | true                                                         |           |





## 增强题：商品导入功能

## ![1653796145542](C:\Users\admin\Desktop\新项目\立可得后台\img\1653796145542.png)

提示：easyExecl 技术。