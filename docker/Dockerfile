FROM ubuntu:18.04

WORKDIR /yocto-ultra96v2

RUN apt-get update && apt-get -y install  \
apt-utils gawk wget git-core diffstat unzip texinfo \
gcc-multilib build-essential chrpath socat libsdl1.2-dev \
xterm python locales cpio

RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

RUN useradd yocto
USER yocto

ENV LANG en_US.UTF-8
