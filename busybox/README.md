# Docker Image microcloud/busybox


This images is strongly inspired and borrows some code from the offical busybox.

Includes libstdc++ and everything that the official busybox provides, except it grabs the libraries from Centos instead of Ubuntu, it may sound irrelevant but I had problem with running some binaries that were compiled in CentOS6 


## Build :
You can build your own busybox by running fs-builder provided in the repo.

See [fs-builder/Dockerfile](https://github.com/microcloud-io/docker-images/blob/master/busybox/fs-builder/Dockerfile) for details.



## notes:
Include everything needed to run Mongodb.


Pull Requests welcome.
