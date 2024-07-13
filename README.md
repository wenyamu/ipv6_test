# 快速安装 nginx 进行 ipv4 和 ipv6 测试

## 把项目下载到本地并进入目录
```
apt install -y git && \
git clone https://github.com/wenyamu/ipv6_test.git /root/ipv6_test && \
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
bash docker-ce.sh && \
docker compose up -d
```

## 总结
>如果你有`ipv4`环境, 在浏览器中访问 `ipv4.site.com` ，页面出现 `This is ipv4 site.`
>
>如果你有`ipv6`环境, 在浏览器中访问 `ipv6.site.com` ，页面出现 `This is ipv6 site.`

或者在终端中使用`curl`
> 在没有 `ipv6` 的服务器中是这样的
```
root@localhost:~# curl ipv4.890.im
This is ipv4 site.
root@localhost:~# curl ipv6.890.im
curl: (7) Couldn't connect to server
root@localhost:~# 
```

## 题外话 webssh ipv6 测试
```
mkdir -p /root/websshtest/ && \
iptables -I INPUT -p tcp --dport 8888 -j ACCEPT && \
iptables -I INPUT -p udp --dport 8888 -j ACCEPT && \
ip6tables -I INPUT -p tcp --dport 8888 -j ACCEPT && \
ip6tables -I INPUT -p udp --dport 8888 -j ACCEPT && \
cat > /root/websshtest/docker-compose.yml << EOF
services:
    ywsj_webssh:
        container_name: websshtest
        ports:
            - '8888:8888'
        environment:
            - TZ=Asia/Shanghai
        restart: always
        hostname: webssh
        image: lihaixin/webssh
EOF
cd /root/websshtest/ && \
docker compose up -d
```


