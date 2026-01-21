#! /bin/bash

#$1 is username
#$2 is pubkey provided

KEY_FINGERPRINT="$(ssh-keygen -lf /dev/stdin | awk '{print $2}')"

a=$(./host_find.sh "$KEY_FINGERPRINT")

#returns an ip of the host in range of 192.168.111.x 
echo $a
