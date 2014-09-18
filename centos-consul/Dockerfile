FROM centos:7
MAINTAINER omeid@microcloud.io

# Enable EPEL
RUN yum -y install http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Update the system.
RUN yum -y upgrade
RUN yum -y install unzip nc

# Get Consul
ADD https://dl.bintray.com/mitchellh/consul/0.4.0_linux_amd64.zip /tmp/consul.zip
RUN unzip /tmp/consul.zip consul -d /bin/
RUN chmod +x /bin/consul
