sudo apt-get update

sudo apt-get install -y build-essential tcl

cd /tmp

curl -O http://download.redis.io/redis-stable.tar.gz

tar xzvf redis-stable.tar.gz

cd redis-stable

make

make test

sudo make install

sudo mkdir /etc/redis

sudo curl -o /etc/redis/redis-7001.conf https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7001/redis-7001.conf

sudo curl -o /etc/systemd/system/redis-server-7001.service https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7001/systemd.service

sudo systemctl start redis-server-7001

