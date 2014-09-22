FROM scratch
MAINTAINER omeid@microcloud.io
ADD rootfs.tar /

ONBUILD ADD start.sh /bin/start 
ONBUILD RUN chmod +x /bin/start
CMD start
