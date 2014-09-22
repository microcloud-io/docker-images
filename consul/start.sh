#!/bin/sh
die()  { echo; echo "ERROR:    $@" 1>&2; echo; echo "Exiting.";  exit 1; }
warn() { echo; echo "WARNING: $@"  1>&2; echo; }
info() {       echo "INFO: $@"     1>&2; }

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
  sh /bin/service;
  service_status=$?
else 
  die "No Service Found."
fi

# Did the service failed?
if [ "$service_status" -ne 0 ]; then
  warn "Service failed.";
  # Services can be configured to be restarted during health checks
  # as such keep the container running until consul is up.
  wait "$consul_pid"
else
  #if we are here, the services has finished ask consul to shut down.
  info "Services finished."
  kill -s SIGINT "$consul_pid"
  info "Shutting down consul."
  wait "$consul_pid" #wait for consul to shut down.
fi;

# if we are here, the service has succesfully finished.
echo "Exiting. Bye."
