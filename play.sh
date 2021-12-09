# !/usr/bin/env sh  需要在服务器上执行此脚本

# 确保脚本抛出遇到的错误
# set -e

# 生成静态文件
git pull

npm run build
echo "npm run build"

docker build -t  yyx-blob:latest .
echo "deploy finish!!!"
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

