#!/bin/bash

echo "Running post deployment scan..."

if curl -s http://localhost | grep -i "error"; then
    echo "Post Deploy Scan Failed: error word found on website"
    exit 1
else
    echo "Post Deploy Scan Passed"
fi
