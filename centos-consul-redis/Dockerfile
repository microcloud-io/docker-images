FROM microcloud/centos-consul
MAINTAINER omeid@microcloud.io

#Until epel bumps Redis version.
RUN yum -y install http://rpms.famillecollet.com/enterprise/remi-release-6.rpm   
RUN yum -y upgrade

RUN yum -y --enablerepo=remi install redis
