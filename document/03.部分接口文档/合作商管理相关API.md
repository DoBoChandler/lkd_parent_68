##  合作商管理--查询

涉及表：tb_partner （合作商表）

| 请求url  | /api/user-service/partner/search                             |                |
| -------- | ------------------------------------------------------------ | -------------- |
| 请求类型 | GET                                                          |                |
| 请求参数 | ?pageIndex=1&pageSize=10&name=金                             | name为搜索条件 |
| 返回值   | {"pageIndex":"1","pageSize":"10","totalPage":"1","totalCount":"9","currentPageRecords":[{"createTime":"2020-09-24T15:41:25","updateTime":"2020-09-24T15:59:11","id":1,"name":"金燕龙合作商","account":"13800000000","password":"","contact":"李四","mobile":"13800000000","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":15,"status":true,"vmCount":78},{"createTime":"2020-12-18T09:59:29","updateTime":"2020-12-18T10:12:51","id":4,"name":"天华物业","account":"18940843614","password":"","contact":"刘俊杰","mobile":"18940843614","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":12,"status":true,"vmCount":4},{"createTime":"2020-12-23T15:21:08","updateTime":"2020-12-23T15:21:08","id":6,"name":"金燕龙物业","account":"18500000000","password":"","contact":"金燕龙合作商","mobile":"18500000000","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":20,"status":true,"vmCount":0},{"createTime":"2020-12-28T15:31:37","updateTime":"2020-12-28T15:31:37","id":10,"name":"合作商开发-勿删","account":"13436868832","password":"","contact":"黄旭","mobile":"13436868832","phone":"13436868832","email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":100,"status":true,"vmCount":0},{"createTime":"2021-01-11T09:16:59","updateTime":"2021-01-11T09:16:59","id":11,"name":"北京合作商","account":"13261698937","password":"","contact":"北京合作商","mobile":"13261698937","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":99,"status":true,"vmCount":9},{"createTime":"2021-01-11T10:08:29","updateTime":"2021-01-11T10:08:29","id":19,"name":"佳佳","account":"5","password":"","contact":"佳佳集团","mobile":"18500000002","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":90,"status":true,"vmCount":2},{"createTime":"2021-01-11T16:00:31","updateTime":"2021-01-11T16:00:31","id":24,"name":"test","account":"13436868833","password":"","contact":"test","mobile":"13436868833","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":10,"status":true,"vmCount":0},{"createTime":"2021-01-11T16:03:35","updateTime":"2021-01-11T16:03:35","id":25,"name":"likede","account":"18940843666","password":"","contact":"likede","mobile":"18940843666","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":1,"status":true,"vmCount":2},{"createTime":"2022-05-17T20:39:24","updateTime":"2022-05-17T20:39:24","id":35,"name":"12","account":"1234","password":"","contact":"123456","mobile":"12345665776","phone":null,"email":null,"city":null,"county":null,"province":null,"addr":null,"ratio":15,"status":true,"vmCount":0}]} |                |





##  合作商管理--添加

| 请求url  | /api/user-service/partner                                    |      |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | POST                                                         |      |
| 请求参数 | {<br/>  "name": "黑马",<br/>  "contact": "1771234123",<br/>  "mobile": "13312341234",<br/>  "ratio": 3,<br/>  "account": "111223123",<br/>  "password": "123456"<br/>} |      |
| 返回值   | true                                                         |      |





## 合作商管理--重置密码

| 请求url  | /api/user-service/partner/resetPwd/1 | restful id |
| -------- | ------------------------------------ | ---------- |
| 请求类型 | PUT                                  |            |
| 请求参数 | /{id}                                |            |
| 返回值   | true                                 | 无         |





## 合作商管理--修改

| 请求url  | /api/user-service/partner/1 | rest |
| -------- | --------------------------- | ---- |
| 请求类型 | PUT                         |      |
| 请求参数 | /{id}                       |      |
| 返回值   | true                        |      |



## 合作商管理--删除

| 请求url  | /api/user-service/partner/1 | rest |
| -------- | --------------------------- | ---- |
| 请求类型 | DELETE                      |      |
| 请求参数 | /{id}                       |      |
| 返回值   | true                        |      |

