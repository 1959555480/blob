# 生成静态文件
git pull

npm i

npm run build
echo "npm run build"


# 打包镜像
echo '开始执行打包镜像'
docker build -t yyx-blob:1.0 .
echo '停止旧镜像删除'
docker stop yyx-blob
docker rm yyx-blob
echo '启动新镜像'
# 展示镜像
docker container run -p 80:80 --name yyx-blob -d yyx-blob:1.0
# 运行镜像