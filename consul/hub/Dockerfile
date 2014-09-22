FROM microcloud/consul 
MAINTAINER omeid@microcloud.io

#      RPC  HTTP DNS
EXPOSE 8400 8500 53/udp

ADD https://dl.bintray.com/mitchellh/consul/0.4.0_web_ui.zip /tmp/webui.zip
RUN unzip tmp/webui.zip -d tmp/ && mv tmp/dist ui && rm -r /tmp/*
