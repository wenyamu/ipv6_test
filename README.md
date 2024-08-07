# 快速安装 nginx 进行 ipv4 和 ipv6 测试

## 把项目下载到本地并进入目录
```
apt install -y git && \
curl -L https://github.com/wenyamu/docker/releases/download/v1.0.0/docker-ce.sh | bash && \
git clone https://github.com/wenyamu/ipv6_test.git /root/ipv6_test && \
cd /root/ipv6_test && \
docker compose up -d
```

## 修改配置文件
>把 `default.conf` 中的
`server_name  ipv4.site.com;` 和 `server_name  ipv6.site.com;` 替换为你的域名

## 域名解析
>把 `ipv4.site.com` 解析(A记录)到 服务器的 `ipv4` 地址

>把 `ipv6.site.com` 解析(AAAA记录)到 服务器的 `ipv6` 地址

## 总结
> 在没有 `ipv6` 的服务器中是这样的
```
root@localhost:~# curl ipv4.site.com
This is ipv4 site.
root@localhost:~# curl ipv6.site.com
curl: (7) Couldn't connect to server
root@localhost:~# 
```
