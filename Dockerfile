FROM nginx:1.25-alpine

ADD ok.png    /usr/share/nginx/html
ADD ipv4.html /usr/share/nginx/html
ADD ipv6.html /usr/share/nginx/html

ADD default.conf /etc/nginx/conf.d

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
