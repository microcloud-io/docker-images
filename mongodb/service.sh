#!/bin/sh

# House keeping.
data_dir='/data/'
db_dir='data/db/'

[ -d "$data_dir" ] || {
    echo "/data/db/ not found."
    echo "Have you linked the an appropriate volume?"
    exit 1
}

## if it is a new volume.
[ -d "$db_dir" ] || mkdir "$db_dir";

## This may not be what you want if 
## You're using a shared storage that
## could be in use by another mongod
## instace.
rm -f "$db_dir/mongod.lock"

# Start mongodb.
mongod  --smallfiles --dbpath "$db_dir"
