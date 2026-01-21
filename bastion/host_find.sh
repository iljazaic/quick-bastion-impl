#! /bin/bash


fingerprint="$1"


echo $(sqlite3 /var/lib/ssh/gateways.db "select gateway_ip from gateways where fingerprint = '$fingerprint' limit 1;")
