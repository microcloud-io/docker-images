#!/bin/sh
die() { echo "ERROR:    $@" 1>&2; echo "Exiting.";  exit 1; }
warn() { echo "WARNING: $@" 1>&2; }
info() { echo "INFO: $@" 1>&2; }

welcome="Hub provides no services other than a central Consul.";
instruction="Type EXIT to stop.";

info "$welcome"
info "$instruction"

while read resp; do
  if [ "$resp" = "EXIT" ]; then
    info "Exiting.";
    exit 0;
  else
    info "$instruction"
  fi;
done
