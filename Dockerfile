# Bind container
#
# version 0.1

FROM ubuntu:14.04

MAINTAINER Soeren Korn <soeren.korn@gmail.com>

ENV LANG de_DE.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen de_DE de_DE.UTF-8
RUN dpkg-reconfigure locales

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install bind9 -y

VOLUME ["/etc/bind"]

EXPOSE 53
EXPOSE 53/udp
