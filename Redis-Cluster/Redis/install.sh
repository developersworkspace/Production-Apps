# Download Redis configuration file
sudo curl -o /etc/redis/redis-server.conf https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/Redis/redis-server.conf
sed "s/_REDIS-PORT_/$1/g" /etc/redis/redis-server.conf > /etc/redis/redis-server-$1.conf

# Download Redis service configuration file
sudo curl -o /etc/systemd/system/redis-server.service https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/Redis/redis-server.service
sed "s/_REDIS-PORT_/$1/g" /etc/systemd/system/redis-server.service > /etc/systemd/system/redis-server-$1.service

# Enable Redis service to run on startup
sudo systemctl enable redis-server-$1

# Start Redis service
sudo systemctl start redis-server-$1