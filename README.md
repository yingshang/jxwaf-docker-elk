# jxwaf-docker-elk

***运行需更新docker为18.03,才可以使用更高级docker-compose功能***

# 运行
```
因为ES要做持久化存储，但是ES不能访问root用户的目录，需要修改目录权限（宿主机操作）
 chown -R 101:101 data/elasticsearch/
 变更环境文件
 mv env .env
 启动服务
 docker-compose up

```
