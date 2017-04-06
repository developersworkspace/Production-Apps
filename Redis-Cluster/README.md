# Redis Cluster

## Installing a Redis Cluster across multiple servers.

To install a Redis Cluster across multiple servers you'll need to execute the following command on each of the servers.

`curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/install.sh | bash -s "7001|7002|7003|7004|7005|7006|7007|7008"`

Then on one of the servers you need to execute the clustering commands.

`curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/cluster.sh | bash -s "<numberOfReplicas>" "<ipAddressOfServer1>|<ipAddressOfServer2>" "<port1>|<port2>"`

For example, if you have two servers with the IP Addresses of '192.168.1.101' and '192.168.1.102', your command will be.

`curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/cluster.sh | bash -s "1" "192.168.1.101|192.168.1.102" "7001|7002|7003|7004|7005|7006|7007|7008"`

The MIT License (MIT)
=====================

Copyright © `2017` `Barend Erasmus`

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the “Software”), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
