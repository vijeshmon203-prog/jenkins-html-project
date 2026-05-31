#!/bin/bash

echo "Checking index.html file..."

if [ -f index.html ]; then
    echo "Test Passed: index.html file found"
else
    echo "Test Failed: index.html file not found"
    exit 1
fi
