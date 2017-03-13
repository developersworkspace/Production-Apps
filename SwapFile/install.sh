sudo fallocate -l 1G /swapfile

sudo chmod 600 /swapfile

sudo mkswap /swapfile

# Make Swap File Permanent

# sudo cp /etc/fstab /etc/fstab.bak

# echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Turn off swap

swapoff /swapfile

sudo rm -f /swapfile