#!/usr/bin/env bash


SERVER_NAME=$(hostname)
IP_ADDRESS=$(hostname -I | awk '{print $1}') #Grab first ip
FREE_RAM=$(free -h | grep Mem | awk '{print $4}')
USED_RAM=$(free -h | grep Mem | awk '{print $3}')


echo "========================================"
echo "        SEXY SERVER HEALTH CHECK"
echo "========================================"
echo "Name of the server: $SERVER_NAME"
echo "IP: $IP_ADDRESS"
echo "Free ram: $FREE_RAM"
echo "Used ram: $USED_RAM"
echo "========================================"


