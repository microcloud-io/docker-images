FROM microcloud/centos-consul
MAINTAINER omeid@microcloud.io

# Get the nginx repo.
RUN yum -y install http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
# Update the system.
RUN yum -y upgrade
RUN yum -y install nginx
