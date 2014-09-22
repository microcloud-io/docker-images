#Microcloud Docker images

> See legacy-centos-images branch for unmainted centos images.


For me details, see each images README under their directory.

## microcloud/busybox
This images is strongly inspired and borrows some code from the offical busybox.
Includes libstdc++ and everything that the official busybox provides.


## microcloud/start
This image is based on microcloud/busybox but defines a command on two on build instructions. 
This images is meant to be used as base.


## microcloud/nope-storage
This image is based on microcloud/start and adds no services but a useful message.
It is meant to be used as Data Only storage.

## microcloud/consul
This image is based on microcloud/start and is very opinionated and is designed to be used as base.
Includes i[consul.io](http://www.consul.io/) (for service discovery, health), [Jenv](https://github.com/omeid/jenv/) (for runtime config edit), and a mechanism to start services.
This images is meant to be used as base.


## microcloud/hub
This image is based on microcloud/consul and includes a configurtion to bootstrap a consul.
This is meant to be used as, as the name suggests, hub to connect other services.


## microcloud/mongodb
This image is based on microcloud/consul. Includes latest mongod and can be configured on run time.
This image needs to link to an extrnal volumes under `/data/`.



More to come..
