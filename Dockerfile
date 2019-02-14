FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Shanghai
ENV LANG en_US.UTF-8
ENV TZ PST+08

#step 1 配置基本环境， 安装基本软件包
#step 1.1 配置镜像源
RUN echo '' > /etc/apt/sources.list.d/stretch-backports.list \
  && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse" > /etc/apt/sources.list \
  && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list \
  && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse" >> /etc/apt/sources.list \
  && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install python3-sphinx make python-pip
RUN mkdir -p ~/.pip
RUN echo "[global]" > ~/.pip/pip.conf
RUN echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" > ~/.pip/pip.conf
RUN pip install sphinx_rtd_theme -i https://pypi.tuna.tsinghua.edu.cn/simple
#CMD ["/bin/bash"]
