# Redis Cluster

## Installing a Redis Cluster on a Linux server(s).

Run this command on your Linux server

`curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/install.sh | bash -s "7001|7002|7003|7004|7005|7006|7007|7008"`

This will create 8 instances of Redis that runs on port 7001 to 7008

**NOTE**

In this example we'll be using '172.24.40.21' and '172.24.40.22' as IP Addressess for our two Linux Severs.

Please replace this with the IP Addresses of your Linux servers

`curl -s https://raw.githubusercontent.com/developersworkspace/Production-Apps/master/Redis-Cluster/cluster.sh | bash -s "1" "172.24.40.21|172.24.40.22" "7001|7002|7003|7004|7005|7006|7007|7008"`

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
