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
sudo curl -o /etc/redis/redis-7001.conf https://raw.githubusercontent.com/developersworkspace/WorldOfRations/master/nginx.conf


sudo curl -o /etc/init/redis-server-7001.conf https://raw.githubusercontent.com/developersworkspace/WorldOfRations/master/nginx.conf

sudo start redis-server-7001