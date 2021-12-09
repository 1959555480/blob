#指定nginx配置项目，--from=builder 指的是从上一次 build 的结果中提取了编译结果(FROM node:alpine as builder)，即是把刚刚打包生成的dist放进nginx中
FROM nginx
COPY ./dist /usr/share/nginx/html/
COPY ./nginx.conf /etc/nginx/nginx.conf

#暴露容器80端口
EXPOSE 80
