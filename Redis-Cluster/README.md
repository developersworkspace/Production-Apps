# Redis Cluster

# Install

Run this command on both Linux servers

`bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/install.sh)`

This will create 8 instances of Redis that runs on port 7001 to 7008

Change to the Redis source directory by running

`cd /tmp/redis-stable/src`

Using the 'redis-trib.rb' file we can cluster all the nodes

**NOTE**

In this example we'll be using '172.24.40.21' as IP Address.

Please replace this with the IP Address of your Linux server

`./redis-trib.rb create --replicas 1 172.24.40.21:7001 172.24.40.21:7002 172.24.40.21:7003 172.24.40.21:7004 172.24.40.21:7005 172.24.40.21:7006 172.24.40.21:7007 172.24.40.21:7008`