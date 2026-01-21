#! /bin/sh

ip="${1}"
fp="${2}"
sqlite3 ./gateways.db "insert into gateways(fingerprint,gateway_ip) values ('$fp', '$ip')"
