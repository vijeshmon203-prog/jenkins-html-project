#!/bin/bash

echo "Checking NGINX status..."

if systemctl is-active --quiet nginx; then
    echo "Monitor Passed: NGINX is running"
else
    echo "Monitor Failed: NGINX is not running"
    exit 1
fi
