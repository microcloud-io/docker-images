FROM busybox
MAINTAINER omeid@microcloud.io

# Get Consul
ADD https://dl.bintray.com/mitchellh/consul/0.4.0_linux_amd64.zip /tmp/consul.zip
RUN unzip /tmp/consul.zip consul -d /bin/
RUN chmod +x /bin/consul
