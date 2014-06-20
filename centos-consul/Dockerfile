FROM centos
MAINTAINER omeid@microcloud.io

# Enable EPEL
RUN yum -y install http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Update the system.
RUN yum -y upgrade
RUN yum -y install unzip

## Get Consul
# Using curl allows for caching of Docker build.
ADD https://dl.bintray.com/mitchellh/consul/0.3.0_linux_amd64.zip /tmp/consul.zip
RUN unzip /tmp/consul.zip consul -d /bin/
RUN chmod +x /bin/consul
VOLUME ["/consul-data"]
EXPOSE 8300 8301 8302 8400 8500 53/udp

ONBUILD ADD ./config /config
