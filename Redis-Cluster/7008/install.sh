# Download Redis configuration file
sudo curl -o /etc/redis/redis-server-7008.conf https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7008/redis-server-7008.conf

# Download Redis service configuration file
sudo curl -o /etc/systemd/system/redis-server-7008.service https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7008/redis-server-7008.service

# Enable Redis service to run on startup
sudo systemctl enable redis-server-7008

# Start Redis service
sudo systemctl start redis-server-7008



