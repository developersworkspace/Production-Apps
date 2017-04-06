sudo apt-get update
sudo apt-get install unzip
cd /usr/local/bin
wget https://dl.bintray.com/mitchellh/consul/0.3.0_linux_amd64.zip
unzip *.zip
rm *.zip
mkdir -p /etc/consul.d/bootstrap
mkdir /var/consul
chown root:root /var/consul

sudo curl -o /etc/consul.d/bootstrap/config.json https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Consul/BootstrapServer/config.json

consul agent -config-dir /etc/consul.d/bootstrap