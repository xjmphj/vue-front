# 前端服务继承自nginx
FROM nginx
LABEL name="vue-front"
LABEL version="1.0"
# 把打包后dist目录下的静态文件 拷贝到 nginx 静态html 文件夹
COPY ./dist /usr/share/nginx/html
# 把vue-front 文件夹下的vue-front.conf 拷贝到 nginx 的配置目录下
COPY ./vue-front.conf /etc/nginx/conf.d
# 暴露 80 端口
EXPOSE 80