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
docker container run -p 80:80 --name yyx-blob:1.0 -d yyx-blob:1.0
