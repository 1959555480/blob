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
# 展示镜像
docker container run -p 80:80 --name yyx-blob -d yyx-blob:1.0
# 运行镜像

# 进入生成的文件夹
#cd document/.vuepress/dist

# git init
# git add -A
# git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:1959555480/1959555480.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
# cd -

