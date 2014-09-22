FROM microcloud/busybox
MAINTAINER omeid@microcloud.io

# Get Consul
ADD https://dl.bintray.com/mitchellh/consul/0.4.0_linux_amd64.zip /tmp/consul.zip
RUN unzip /tmp/consul.zip consul -d /bin/ && chmod +x /bin/consul && rm /tmp/consul.zip

# consul ports
EXPOSE 8300 8301 8302 

ADD https://github.com/omeid/jenv/raw/master/bin/jenv  /bin/jenv
RUN chmod +x /bin/jenv

ADD start.sh /bin/start 
RUN chmod +x /bin/start

ONBUILD ADD config/ /config
ONBUILD ADD service.sh /bin/service


CMD start
