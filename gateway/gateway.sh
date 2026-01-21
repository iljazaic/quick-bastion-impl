#! /bin/bash
set -euo pipefail

read -r key
fp=$(printf '%s\n' "$key" | ssh-keygen -lf /dev/stdin | awk '{print $2}')

ip=$(./host_find.sh "$fp")
printf 'command="ssh -W %s:22",no-pty,no-agent-forwarding %s\n' \
  "$ip" \
  "$key"