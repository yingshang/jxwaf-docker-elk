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

# 服务
```
80,443 jxwaf的HTTP,HTTPS服务
9200 ES服务
5601 kibana服务
5000 logstash监听TCP
8000 WEB控制台
```
根据env文件的web控制的用户，登录进去之后，输入域名，并且到发送logstash地址（172.200.200.230）端口（5000），过几分钟jxwaf就会自动下载控制台的内容进行自动更新。
然后访问kibana，就可以看到相关的数据内容
