cd /tmp/redis-stable/src

IFS='|' read -a ipAddresses <<< "$2"
IFS='|' read -a ports <<< "$3"

replicas=$1

for ipAddress in "${ipAddresses[@]}"
do
    for port in "${ports[@]}"
    do
        ipAddressesAndPorts+="$ipAddress:$port "
    done
done

echo "./redis-trib.rb create --replicas $replicas$ipAddressesAndPorts"
