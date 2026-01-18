#!/bin/bash

AGE=$1 # Get the age from the first command line argument
if [ -z "$AGE" ]; then
    echo "ERROR: Age cannot be empty." # Show an error if the input is empty
    exit 1
elif [ "$AGE" -lt 0 ]; then
    echo "ERROR: Age cannot be negative." # Show an error if the age is negative
    exit 1
elif [ "$AGE" -lt 18 ]; then
    echo "You are a minor." # Message for minors
elif [ "$AGE" -ge 18 ] && [ "$AGE" -lt 65 ]; then
    echo "You are an adult." # Message for adults
else
    echo "You are a senior citizen." # Message for senior citizens
fi