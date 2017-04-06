sudo apt-get update
sudo apt-get install -y unzip

wget https://releases.hashicorp.com/consul/0.7.5/consul_0.7.5_linux_amd64.zip
unzip consul_0.7.5_linux_amd64.zip
mv consul /usr/local/bin/consul

mkdir -p /etc/consul.d/bootstrap
mkdir /var/consul
chown root:root /var/consul

sudo curl -o /etc/consul.d/bootstrap/config.json https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Consul/BootstrapServer/config.json

