FROM alpine:latest

MAINTAINER "lantian316@163.com"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && apk add --no-cache bash-doc \
    && apk add --no-cache bash-completion \
    && apk add --no-cache openssh-client \
    && apk add --no-cache libc6-compat \
    && apk add --no-cache ca-certificates \
    && apk add --no-cache busybox \
    && apk add --no-cache busybox-extras \
    && apk add --no-cache nmap \
    && apk add --no-cache iftop \
    && apk add --no-cache iproute2 \
    && apk add --no-cache ethtool \
    && apk add --no-cache curl \
    && apk add --no-cache wget \
    && apk add --no-cache tcpdump \
    && apk add --no-cache bind-tools \
    && apk add --no-cache libressl \
    && apk add --no-cache mysql-client \
    && apk add --no-cache redis \
    && echo "hosts: files dns" > /etc/nsswitch.conf \
    && sed -i 's#/bin/ash#/bin/bash#g' /etc/passwd \
    && apk add --no-cache tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

CMD [ "bash" ]
