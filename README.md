#Microcloud Docker images

> See legacy-centos-images branch for unmainted centos images.


For me details, see each images README under their directory.

## microcloud/busybox
This images is meant to be used as base.

This images is strongly inspired and borrows some code from the offical busybox.
Provides everything from official busybox plus libstdc++ and two on build instructions
and a CMD script. See microcloud/nope for a simple and microcloud/consul for advanced
usage.


## microcloud/nope
It is meant to be used as Data Only storage.

This image is based on microcloud/busybox and adds no services but a useful message.

## microcloud/consul
This images is meant to be used as base.

This image is based on microcloud/busybox and is very opinionated.
Includes 
[consul.io](http://www.consul.io/) (service discovery, health), 
[Jenv](https://github.com/omeid/jenv/) (run time config edit) , 
and a mechanism to start services. 
See microcloud/hub and microcloud/mongodb as example.


## microcloud/hub
This image is based on microcloud/consul and includes a configurtion to bootstrap a consul.
This is meant to be used as, as the name suggests, hub to connect other services.


## microcloud/mongodb
This image is based on microcloud/consul. Includes latest mongod and can be configured on run time.
This image needs to link to an extrnal volumes under `/data/`.



More to come..
