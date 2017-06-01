# Change to redis source directory
cd /temp_install/redis-stable/src

# Rename 'redis-trib.rb' to 'redis-trib.temp'
mv redis-trib.rb redis-trib.temp

# Comment 'Can I set the above configuration?' line
sed "s/yes_or_die \"Can I set the above configuration?\"/# yes_or_die \"Can I set the above configuration?\"/g" redis-trib.temp > redis-trib.rb

# Split IP Addresses
IFS='|' read -a ipAddresses <<< "$2"

# Split Ports
IFS='|' read -a ports <<< "$3"

# Assign varible 'replicas' to first argument
replicas=$1

for ipAddress in "${ipAddresses[@]}"
do
    for port in "${ports[@]}"
    do
        ipAddressesAndPorts+=" $ipAddress:$port"
    done
done

# Execute 'redis-trib.rb'
ruby ./redis-trib.rb create --replicas $replicas $ipAddressesAndPorts
