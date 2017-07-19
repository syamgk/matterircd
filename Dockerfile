FROM registry.centos.org/centos/centos:7

RUN yum -y install wget

RUN wget -O /usr/bin/matterircd https://github.com/42wim/matterircd/releases/download/v0.13.0/matterircd-linux64 && \
    chmod +x /usr/bin/matterircd

EXPOSE 6667

ENTRYPOINT ["/usr/bin/matterircd", "-bind", "0.0.0.0:6667"]
