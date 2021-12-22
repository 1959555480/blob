* Dockerfile
```
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
```
* nginx.conf
```
server {
  listen       80 default_server;
  listen       [::]:80 default_server;
  server_name  www.yanyongxing.com yanyongxing.com;
  root         /usr/share/nginx/html;
  location / {
    root /usr/share/nginx/html;
      index index.html index.htm;
      try_files $uri $uri/ /index.html;
    }
}
```
* 脚本 play.sh
```
# 生成静态文件
git pull
npm run build
echo "npm run build"
# 打包镜像
echo '开始执行打包镜像'
docker build -t yyx-blob:1.0 .
echo '停止旧镜像删除'
docker stop yyx-blob:1.0
docker rm yyx-blob:1.0
echo '启动新镜像'
# 运行镜像
docker container run -p 80:80 --name yyx-blob -d yyx-blob:1.0
```