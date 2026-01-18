#!/bin/bash

read -p "ENTER YOUR NAME: " name

if [ -z "$name" ]; then
    echo "ERROR: Name cannot be empty."
    exit 1
elif [ "$name" == "Alice" ]; then
    echo "Hello, "$name"! Welcome back!"
elif [ "$name" == "Bob" ]; then
    echo "Hi "$name"! Good to see you!"
else
    echo "Hello, $name! Nice to meet you!"
fi