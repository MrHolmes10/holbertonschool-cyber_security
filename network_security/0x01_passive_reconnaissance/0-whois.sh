#!/bin/bash
whois "$1" | awk -F': ' '/^(Admin|Tech|Registrant)/ {print $0}' > "$1".csv
