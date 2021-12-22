# 设置基础镜像
FROM nginx
LABEL name='yyx-blob'
LABEL version='1.0'
# 将dist文件复制到对应目录
COPY ./dist /usr/share/nginx/html
# 将配置文件复制到对应目录
# RUN rm -rf /usr/share/nginx/nginx.conf 
COPY ./nginx.conf /usr/share/nginx/nginx.conf

#暴露容器80端口
EXPOSE 80
