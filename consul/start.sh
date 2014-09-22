#!/bin/sh
die() { echo "$@" 1>&2; echo "Exiting.";  exit 1; }

for js in /config/*.jenv; do
  jenv "$js" cnsl_ | tee  "${js%%\.jenv}";
done                                  &&
/bin/consul agent -config-dir=/config  & consul_pid=$!

#Wait for consul to come up.
echo "Waiting for consul to accept tcp.."
until nc -z 127.0.0.1 8500; do
  kill -0 "$consul_pid" || die "Consul faild to start."
  printf "."
  sleep 1; 
done;


echo "Starting the service.."
if [ -f /bin/service ]; then
  . /bin/service;
else 
  echo "WARNNING! No Service Found."
fi

# if we are here, the service either died or is running as a deamon.
# Services can be configured to be restarted during health checks
# as such we keep the container up until consul is up.
wait "$consul_pid"
echo "Exiting. Bye."
