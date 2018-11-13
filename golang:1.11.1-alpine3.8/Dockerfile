FROM golang:1.11.1-alpine3.8

COPY time.go /go/src/docker-timezone-checker/

# @link https://wiki.alpinelinux.org/wiki/Main_Page
# 方便其他镜像执行更新、作为基础中间镜像把这事情搞了
# 装下dep 可能会有用
RUN \
 echo "http://mirrors.aliyun.com/alpine/v3.8/main/" > /etc/apk/repositories && \
 apk update && \
 apk upgrade && \
 apk add tzdata && \
 cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
 echo 'Asia/Shanghai' > /etc/timezone && \
 cd /go/src/docker-timezone-checker && go install


# 其他有用支持 @全员讨论

# date '+%Y-%m-%d %H:%M:%S'
# apt-get -y install ntpdate && \
