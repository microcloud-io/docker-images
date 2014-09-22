FROM centos:centos6

RUN yum -y upgrade && yum -y install busybox tar && yum -y clean all

RUN mkdir /rootfs
WORKDIR /rootfs
RUN mkdir bin etc lib proc sbin tmp dev dev/pts lib64 sys usr usr/lib64 var
RUN touch etc/resolv.conf
RUN cp /etc/nsswitch.conf etc/nsswitch.conf
RUN echo root:x:0:0:root:/:/bin/sh > etc/passwd && echo root:x:0: > etc/group

RUN bash -c "cp /lib64/lib{c,m,dl,rt,nsl,nss_*,pthread,resolv,gcc*}.so.* lib64"
RUN cp /lib64/ld-linux-x86-64.so.2 lib64
RUN cp /usr/lib64/libstdc++* usr/lib64

RUN cp --parents $(type -p busybox) .
RUN busybox --install -s bin/

RUN tar cf /rootfs.tar .
#RUN for X in console null ptmx random stdin stdout stderr tty urandom zero ; do tar uf /rootfs.tar -C/ ./dev/$X ; done
