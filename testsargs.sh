#!/bin/bash
#check for an argument, print usage message if none found
if [ $# -eq 0 ]; then
    echo "USAGE: $0 FILENAME"
    exit 1
fi
echo "The filename given is: $1"
exit 0