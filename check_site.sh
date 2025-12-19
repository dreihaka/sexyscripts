#!/usr/bin/env bash

TARGET=$1

if [ -z "$TARGET" ]; then
    echo "Pass me some args nigga"
    echo "Usage: $0 example.com"
    exit 1;
fi 

echo "Checking $TARGET"

HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" $TARGET)

if [ $HTTP_CODE -eq 200 ]; then
    echo "Success: $TARGET is up! (Status HTTP_CODE)"
else
    echo "Failure: $TARGET is down or some weird shi. (Status $HTTP_CODE)"
fi
