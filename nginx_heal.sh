#!/usr/bin/env bash

SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is running okay so far. "
else 
    echo "$SERVICE is not visible running. Restarting the process."
    systemctl start nginx 
    echo "Restarted the process"
fi

