FROM ubuntu:xenial
MAINTAINER Robert Clark <rbclark@mitre.org>

RUN apt-get update
RUN apt-get -y install openssh-server gcc

WORKDIR /opt/challenge

COPY sshd_config /etc/ssh/sshd_config
COPY got.c .

RUN gcc -o GoT got.c
RUN chmod +x /opt/challenge/

RUN useradd -ms /bin/bash  -d /opt/challenge challenge
RUN passwd -d challenge

RUN mkdir /var/run/sshd

CMD ["/usr/sbin/sshd", "-D"]
