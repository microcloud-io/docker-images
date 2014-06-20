FROM microcloud/centos-consul
MAINTAINER omeid@microcloud.io

RUN yum -y upgrade
RUN yum -y install ca-certificates golang git hg 
 
RUN mkdir -p /go/src /go/bin /go/pkg
ENV GOPATH /go
ENV PATH $PATH:/go/bin
