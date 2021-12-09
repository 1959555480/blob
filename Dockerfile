  # resum Dockerfile

  #指定node镜像对项目进行依赖安装和打包
  FROM node:10.16.0 AS builder

  RUN npm install
  
  RUN npm run build 

  #指定nginx配置项目，--from=builder 指的是从上一次 build 的结果中提取了编译结果(FROM node:alpine as builder)，即是把刚刚打包生成的dist放进nginx中
  FROM nginx
  COPY --from=builder ./dist /usr/share/nginx/html/
  COPY --from=builder ./nginx.conf /etc/nginx/nginx.conf

  #暴露容器80端口
  EXPOSE 80
