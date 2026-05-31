#!/bin/bash

echo "Running website health check..."

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" http://localhost)

if [ "$STATUS_CODE" = "200" ]; then
    echo "Health Check Passed: Website is working"
else
    echo "Health Check Failed: Website is not working"
    exit 1
fi
