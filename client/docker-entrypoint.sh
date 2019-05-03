#!/bin/sh
set -exuo pipefail

# example.com の IP 宛通信は http-server に飛ばす
# route add -net 93.0.0.0/8 gw $(dig +short http-server) eth0
route add -host $(dig +short example.com) gw $(dig +short http-server) eth0

route -n

exec "$@"
