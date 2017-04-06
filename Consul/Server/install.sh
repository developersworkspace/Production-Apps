# Updates package indexes of local machine
sudo apt-get update

# Install 'unzip'
sudo apt-get install -y unzip

# Donwloads and install consul
wget https://releases.hashicorp.com/consul/0.7.5/consul_0.7.5_linux_amd64.zip
unzip consul_0.7.5_linux_amd64.zip
mv consul /usr/local/bin/consul

# Creates consul directories and sets permissions
mkdir -p /etc/consul.d/bootstrap
mkdir /var/consul
chown root:root /var/consul

# Downloads server config
sudo curl -o /etc/consul.d/bootstrap/config.json https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Consul/Server/config.json

