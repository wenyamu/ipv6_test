FROM nginx:1.25-alpine

ADD ok.png /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
#使用 ENTRYPOINT 无法启动容器
#ENTRYPOINT ["/docker-entrypoint.sh"]