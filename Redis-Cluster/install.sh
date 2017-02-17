# Updates package indexes of local machine
sudo apt-get update

# Install 'build-essential' and 'tcl'
sudo apt-get install -y build-essential tcl

# Create and Change to '/tmp' directory
cd /tmp

# Download Redis sources
curl -O http://download.redis.io/redis-stable.tar.gz

# Unzip Redis sources
tar xzvf redis-stable.tar.gz

# Change to 'redis-stable'
cd redis-stable

# Compile Redis source
make

# Run Redis source tests
make test

# Install Redis
sudo make install

# Create '/etc/redis' directory
sudo mkdir /etc/redis

# Install 8 instances
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7001/install.sh)
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7002/install.sh)
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7003/install.sh)
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7004/install.sh)
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7005/install.sh)
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7006/install.sh)
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7007/install.sh)
bash <(curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7008/install.sh)

# Install 'ruby'
sudo apt-get install -y ruby

# Install 'redis' package for ruby
gem install redis
