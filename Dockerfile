FROM registry.centos.org/centos/centos

RUN yum -y install golang git

ENV GOPATH /tmp/

RUN go get github.com/42wim/matterircd

RUN cp /tmp/bin/matterircd /usr/bin/

RUN yum remove -y golang git

EXPOSE 6667

ENTRYPOINT ["/usr/bin/matterircd", "-bind", "0.0.0.0:6667"]
