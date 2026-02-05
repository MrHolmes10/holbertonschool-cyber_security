#!/bin/bash
john --wordlist=/usr/share/worldslists/rockyou.txt --format=nt "$1" >/dev/null 2>&1 && john --show --format=nt "$1" | awk -F: '{print $2}' > 5-password.txt 
