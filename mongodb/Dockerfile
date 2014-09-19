FROM microcloud/consul
MAINTAINER omeid@microcloud.io

# Get MongoDB
ADD https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.6.4.tgz /tmp/mongodb.tgz
RUN TAR=/tmp/mongodb.tgz; MGO=mongodb-linux-x86_64-2.6.4; tar -xvf $TAR && mv $MGO/bin/* /sbin/ && rm -r $MGO $TAR
