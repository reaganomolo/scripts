#!/bin/bash

#Write a script which:

#Asks the user for a number, which should be "1" or "2". Any other input should lead to an error report.
read -p "ENTER A NUMBER (1 or 2): " numb
if [ "$numb" != "1" ] && [ "$numb" != "2" ]; then
    echo "ERROR: Invalid input. Please enter 1 or 2."
    exit 1
fi

#Sets an environmental variable to be "Yes" if it is "1", and "No" if it is "2".

if [ "$numb" -eq 1 ]; then
    export MYVAR="Yes"
else
    export MYVAR="No"
fi

echo "The environmental variable MYVAR is set to: $MYVAR"



