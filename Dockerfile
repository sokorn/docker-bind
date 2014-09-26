# Bind container
#
# version 0.2

FROM ubuntu:14.04

MAINTAINER Soeren Korn <soeren.korn@gmail.com>

ENV LANG de_DE.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen de_DE de_DE.UTF-8
RUN dpkg-reconfigure locales

RUN apt-get update && apt-get install -y \
        bind9 dnsutils nano

#add startup script an make it executable
COPY startup /usr/local/bin/startup
RUN chmod +x /usr/local/bin/startup

CMD ["/usr/local/bin/startup"]

VOLUME ["/etc/bind"]

EXPOSE 53
EXPOSE 53/udp
