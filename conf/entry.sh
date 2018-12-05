#!/bin/bash
nginx &
redis-server /etc/redis.conf &
mongod -f /etc/mongod.conf --logappend --logpath /data/logs/mongod.log --port 27017