#! /bin/bash

#$1 is username


KEY_FINGERPRINT="$(ssh-keygen -lf /dev/stdin | awk '{print $2}')"

a=$(./find_vm.sh "$KEY_FINGERPRINT")
echo $a
