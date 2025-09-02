#!/bin/sh
set -eu

GW="${GW:?set GW env}"

# Wait until eth0 has an IPv4 address (Docker may need a moment)
for i in $(seq 1 30); do
  if ip -4 -o addr show dev eth0 | grep -q 'inet '; then
    break
  fi
  echo "[host] waiting for eth0 IP ($i/30)..."
  sleep 0.2
done

# Replace default route via our router
if ip route replace default via "$GW" dev eth0; then
  echo "[host] default route via $GW"
else
  echo "[host] FAILED to set default route via $GW"
fi

ip route

# Keep the container alive regardless of the outcome
exec tail -f /dev/null
