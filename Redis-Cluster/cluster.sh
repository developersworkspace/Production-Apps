function join { local IFS="$1"; shift; echo "$*"; }


cd /tmp/redis-stable/src

replicas = "$1"
IFS='|' read -a ipAddresses <<< "$2"
IFS='|' read -a ports <<< "$3"

ipAddressesAndPorts = ()

for ipAddress in "${ipAddresses[@]}"
do
    for port in "${ports[@]}"
    do
        ipAddressesAndPorts += ("$ipAddress:$port")
    done
done

result = join " " ${ipAddressesAndPorts[@]}
echo $result

# ./redis-trib.rb create --replicas "$replicas" 172.24.40.21:7001 172.24.40.21:7002 172.24.40.21:7003 172.24.40.21:7004 172.24.40.21:7005 172.24.40.21:7006 172.24.40.21:7007 172.24.40.21:7008

