#!/usr/bin/env bash

SUBHUMANNET=$1

if [ -z "$SUBHUMANNET" ]; then
    echo "You've typed wrong params."
    echo "Usage: "$0" 192.168.1"
    exit 1;
fi

echo "Scanning subnet $SUBHUMANNET.0/24"

for IP in {1..254}; do
    ping -c 1 -W "$SUBHUMANNET.$IP" &> /dev/null

if [ $? -eq 0 ]; then
    echo "Host found: $SUBHUMANNET.$IP"
fi

done

