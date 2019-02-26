FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Shanghai

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
      build-essential \
      epubcheck \
      apt-utils \
      git \
      gettext \
      graphviz \
      imagemagick \
      make \
      lmodern \
      python-virtualenv \
      python3-pip \
      python3 \
      mercurial \
      xzdec \
      texlive-lang-chinese \
      latexmk \
      python3-sphinx \
  && apt-get autoremove \
  && apt-get clean

RUN mkdir -p ~/.pip
RUN echo "[global]" > ~/.pip/pip.conf
RUN echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.pip/pip.conf
RUN pip3 install sphinx_rtd_theme -i https://pypi.tuna.tsinghua.edu.cn/simple

RUN mkdir /repos /sphinx
WORKDIR /sphinx
#CMD ["/bin/bash"]
