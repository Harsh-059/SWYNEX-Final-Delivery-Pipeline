#!/bin/bash

add() {
    echo $(($1 + $2))
}

subtract() {
    echo $(($1 - $2))
}

multiply() {
    echo $(($1 * $2))
}

divide() {
    if [ "$2" -eq 0 ]; then
        echo "Error: Division by zero"
        return 1
    fi

    echo $(($1 / $2))
}

echo "================================"
echo " SWYNEX Final Delivery Pipeline"
echo "================================"

echo "Addition: $(add 20 5)"
echo "Subtraction: $(subtract 20 5)"
echo "Multiplication: $(multiply 20 5)"
echo "Division: $(divide 20 5)"

echo "Application executed successfully!"
