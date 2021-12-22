# 设置基础镜像
FROM nginx
# 将dist文件复制到对应目录
COPY ./dist /etc/nginx/html/
# 将配置文件复制到对应目录
RUN rm -rf /etc/nginx/nginx.conf 
COPY ./nginx.conf /etc/nginx/nginx.conf

#暴露容器80端口
EXPOSE 80
