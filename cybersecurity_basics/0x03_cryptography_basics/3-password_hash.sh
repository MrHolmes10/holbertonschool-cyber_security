#!/bin/bash
salt=$(openssl rand -hex 8)
password="$salt$1"
echo -n  "$password" | openssl dgst -sha512 > 3_hash.txt 
