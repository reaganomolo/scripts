#!/bin/bash
#Asks the user for a number (1, 2 or 3).
read -p "ENTER A NUMBER (1, 2 or 3): " number
if [ "$number" != "1" ] && [ "$number" != "2" ] && [ "$number" != "3" ]; then
    echo "ERROR: Invalid input"

    exit 1  
fi

#Declares a function which takes the number as a parameter and prints it.
function_number (){
    echo "The number provided is: $1"
}

#calling the function
function_number "$number"