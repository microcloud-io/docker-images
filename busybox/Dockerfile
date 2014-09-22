FROM scratch
MAINTAINER omeid@microcloud.io
ADD fs/rootfs.tar /

ONBUILD ADD start.sh /bin/start 
ONBUILD RUN chmod +x /bin/start
CMD start
