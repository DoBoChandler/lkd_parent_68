## 商品管理--分页展示

| 请求url  | /api/vm-service/sku/search                                   |      |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | GET                                                          |      |
| 请求参数 | ?pageIndex=1&pageSize=10                                     |      |
| 响应参数 | {"pageIndex":"1","pageSize":"10","totalPage":"16","totalCount":"160","currentPageRecords":[{"createTime":"2020-09-14T09:14:17","updateTime":"2020-09-14T09:14:19","skuId":"1","skuName":"可口可乐","skuImage":"http://lkd2-java.itheima.net/image/0a3b3288-3446-4420-bbff-f263d0c02d8e.jpg","price":150,"classId":23,"discount":false,"unit":"550ML","brandName":"可口可乐","skuClass":{"classId":23,"className":"洗***脚","parentId":0},"capacity":null,"realPrice":null}]} |      |





## 商品管理--添加商品

| 请求url  | /api/vm-service/sku                                          |         |
| -------- | ------------------------------------------------------------ | ------- |
| 请求类型 | POST                                                         |         |
| 请求参数 | {<br/>  "brandName": "王老吉",<br/>  "classId": 2,<br/>  "price": 250,<br/>  "skuImage": "http://lkd2-java.itheima.net/image/0b0ebaab28e646a8b1b6b4aa18949e69.jpg",<br/>  "skuName": "王老吉xx",<br/>  "unit": "500ml"<br/>} |         |
| 响应参数 | true                                                         | boolean |





## 商品管理--修改商品

| 请求url  | /api/vm-service/sku/1306121095795654658                      |      |
| -------- | ------------------------------------------------------------ | ---- |
| 请求类型 | PUT                                                          |      |
| 请求参数 | {<br/>  "brandName": "可口可乐",<br/>  "classId": 2,<br/>  "price": 550,<br/>  "skuImage": "http://lkd2-java.itheima.net/image/f966a38e-0780-40be-bb52-5699d13cb3d9_200x173.jpg",<br/>  "skuName": "统一阿萨姆奶茶",<br/>  "unit": "500ML"<br/>} |      |
| 响应参数 | true                                                         |      |

