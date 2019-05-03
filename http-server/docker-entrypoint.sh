#!/bin/sh
set -exuo pipefail

# example.com の IP 宛のリクエストを受け付けられるようにする
ifconfig eth0:1 $(dig +short example.com);

exec "$@"
