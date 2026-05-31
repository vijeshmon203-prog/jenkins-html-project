#!/bin/bash

echo "Scanning source code..."

if grep -i "password" index.html; then
    echo "Scan Failed: password word found"
    exit 1
else
    echo "Scan Passed: No password word found"
fi
