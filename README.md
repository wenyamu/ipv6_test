# 快速安装 nginx 进行 ipv4 和 ipv6 测试

>如果没有安装 docker 先安装
```
bash docker-ce.sh
```

## 修改配置文件
>把 `default.conf` 中的
`server_name  ipv4.site.com;` 和 `server_name  ipv6.site.com;` 替换为你的域名

>把 `ipv4.site.com` 解析(A记录)到 服务器的 `ipv4` 地址

>把 `ipv6.site.com` 解析(AAAA记录)到 服务器的 `ipv6` 地址

## 部署
```
docker compose up -d
```

## 总结
如果你有ipv4环境 访问 `ipv4.site.com` 成功

如果你有ipv6环境 访问 `ipv6.site.com` 成功



