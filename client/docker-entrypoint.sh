#!/bin/sh
set -exuo pipefail

ping -w 3 example.com

default_gateway_ip=$(route | grep default | awk '{print $2}')
# example.com の IP 宛通信は http-server に飛ばす
# route add -net 93.0.0.0/8 gw $(dig +short http-server) eth0

## TODO: 名前解決できるようにする
### ※ この方法はダメ
cat /etc/resolv.conf
route add -net 127.0.0.0/8 gw $default_gateway_ip eth0
ping -w 3 example.com

route del -net 0.0.0.0 eth0

ping -w 3 example.com

route add -net 0.0.0.0 gw $(dig +short http-server) eth0

route -n

exec "$@"
