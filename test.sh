#!/bin/bash

source ./app.sh > /dev/null

echo "Starting automated tests..."

# Test addition
result=$(add 20 5)
if [ "$result" = "25" ]; then
    echo "PASS: Addition test"
else
    echo "FAIL: Addition test"
    exit 1
fi

# Test subtraction
result=$(subtract 20 5)
if [ "$result" = "15" ]; then
    echo "PASS: Subtraction test"
else
    echo "FAIL: Subtraction test"
    exit 1
fi

# Test multiplication
result=$(multiply 20 5)
if [ "$result" = "100" ]; then
    echo "PASS: Multiplication test"
else
    echo "FAIL: Multiplication test"
    exit 1
fi

# Test division
result=$(divide 20 5)
if [ "$result" = "4" ]; then
    echo "PASS: Division test"
else
    echo "FAIL: Division test"
    exit 1
fi

echo "All tests passed successfully!"
