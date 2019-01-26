#!/bin/bash
set -exuo pipefail

# example.com の IP 宛通信は http-server に飛ばす
# route add -net 93.0.0.0/8 gw $(dig +short http-server) eth0
route add $(dig +short example.com)/32 gw $(dig +short http-server) eth0

route --numeric

exec "$@"
