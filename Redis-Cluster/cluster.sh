cd /tmp/redis-stable/src
mv redis-trib.rb redis-trib.temp
sed "s/yes_or_die \"Can I set the above configuration?\"/# yes_or_die \"Can I set the above configuration?\"/g" redis-trib.temp > redis-trib.rb

IFS='|' read -a ipAddresses <<< "$2"
IFS='|' read -a ports <<< "$3"

replicas=$1

for ipAddress in "${ipAddresses[@]}"
do
    for port in "${ports[@]}"
    do
        ipAddressesAndPorts+=" $ipAddress:$port"
    done
done

./redis-trib.rb create --replicas $replicas$ipAddressesAndPorts
