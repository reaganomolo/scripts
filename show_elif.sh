#!/bin/bash

read -p "ENTER YOUR NAME: " name

if [ -z "$name" ]; then
    echo "ERROR: Name cannot be empty." #Shows an error if the input is empty
    exit 1
elif [ "$name" == "Alice" ]; then
    echo "Hello, "$name"! Welcome back!"
elif [ "$name" == "Bob" ]; then
    echo "Hi "$name"! Good to see you!"
else
    echo "Hello, $name! Nice to meet you!" #Greets the user with a generic message for any other name
fi