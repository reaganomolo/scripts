#!/bin/bash

# Define Functions for each operation
add() {
    echo "Result: $(($1 + $2))"
}

subtract() {
    echo "Result: $(($1 - $2))"
}

multiply() {
    echo "Result: $(($1 * $2))"
}

divide() {
    # Check for division by zero
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
        exit 1
    fi
    echo "Result: $(($1 / $2))"
}

# 1. Check for missing input (Exactly 3 arguments required)
if [ $# -ne 3 ]; then
    echo "Usage: $0 <operation: a|s|m|d> <num1> <num2>" # a=add, s=subtract, m=multiply, d=divide
    exit 1
fi

OPERATION=$1 # a=add, s=subtract, m=multiply, d=divide
NUM1=$2 # First number
NUM2=$3 # Second number

# 2. Detect for bad input (Ensure arguments 2 and 3 are numbers)
re='^[0-9]+$'
if ! [[ $NUM1 =~ $re ]] || ! [[ $NUM2 =~ $re ]] ; then
   echo "Error: Arguments 2 and 3 must be numbers."
   exit 1
fi

# 3. Determine which function to call based on the letter provided
case $OPERATION in
    a) add $NUM1 $NUM2 ;;
    s) subtract $NUM1 $NUM2 ;;
    m) multiply $NUM1 $NUM2 ;;
    d) divide $NUM1 $NUM2 ;;
    *) echo "Error: Invalid operation. Use a, s, m, or d."
       exit 1 ;;
esac