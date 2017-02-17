# Download Redis configuration file
sudo curl -o /etc/redis/redis-server-7007.conf https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7007/redis-server-7007.conf

# Download Redis service configuration file
sudo curl -o /etc/systemd/system/redis-server-7007.service https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/7007/redis-server-7007.service

# Enable Redis service to run on startup
sudo systemctl enable redis-server-7007

# Start Redis service
sudo systemctl start redis-server-7007



