fingerprint="$1"
echo $(sqlite3 ./vms.db "select subip from vms where fingerprint = '$fingerprint' limit 1;")