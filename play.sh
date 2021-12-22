# 生成静态文件
git pull

npm run build
echo "npm run build"


# 打包镜像
# docker build -t yyx-blob:latest .
# 推镜像
docker push reg.htres.cn/yw_18kn1/demonginx
# 展示镜像
docker images build -t  yyx-blob:latest .
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

