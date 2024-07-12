# 快速安装 nginx 进行 ipv4 和 ipv6 测试

## 把项目下载到本地并进入目录
```
git clone https://github.com/wenyamu/ipv6_test.git
cd ipv6_test
```

## 修改配置文件
>把 `default.conf` 中的
`server_name  ipv4.site.com;` 和 `server_name  ipv6.site.com;` 替换为你的域名

## 域名解析
>把 `ipv4.site.com` 解析(A记录)到 服务器的 `ipv4` 地址

>把 `ipv6.site.com` 解析(AAAA记录)到 服务器的 `ipv6` 地址

## 部署
>如果没有安装 `docker` 先安装 `bash docker-ce.sh`
```
cd ipv6_test
docker compose up -d
```

## 总结
>如果你有`ipv4`环境 在浏览器中访问 `ipv4.site.com` 成功，页面出现 `This is ipv4 site.`
>
>如果你有`ipv6`环境 在浏览器中访问 `ipv6.site.com` 成功，页面出现 `This is ipv6 site.`

或者在终端中使用`curl`
> 在没有 `ipv6` 的服务器中是这样的
```
root@localhost:~# curl ipv4.890.im
This is ipv4 site.
root@localhost:~# curl ipv6.890.im
curl: (7) Couldn't connect to server
root@localhost:~# 
```

