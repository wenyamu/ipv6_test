快速安装nginx 进行 ipv4 和 ipv6 测试

如果没有安装 docker 先安装
```
bash docker-ce.sh
```

把 default.conf 中的
`server_name  ipv4.site.com;` 和 `server_name  ipv6.site.com;` 替换为你的域名

把 `ipv4.site.com` 解析(A记录)到 服务器的 `ipv4` 地址
把 `ipv6.site.com` 解析(AAAA记录)到 服务器的 `ipv6` 地址





