FROM microcloud/centos-consul
MAINTAINER omeid@microcloud.io


ADD mongodb-org.repo /etc/yum.repos.d/mongodb-org.repo
RUN yum -y upgrade
RUN yum -y install mongodb-server
