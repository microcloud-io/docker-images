FROM microcloud/busybox
MAINTAINER omeid@microcloud.io

# Get MongoDB
#ADD https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.6.4.tgz /tmp/mongodb.tgz
ADD mongodb-linux-x86_64-2.6.4.tgz /tmp/
RUN TMP=/tmp/; MGO=/tmp/mongodb-linux-x86_64-2.6.4; mv $MGO/bin/* /sbin/ && rm -r $TMP/*
