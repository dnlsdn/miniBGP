#!/bin/sh
set -eu
GW="${GW:?set GW env}"   # required gateway IP
ip route add default via "$GW" dev eth0 || true
echo "[host] default route via $GW"
tail -f /dev/null
