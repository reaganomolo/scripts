#!/bin/bash

read -p "Please specify Window, Middle or Aisle for your seat: " choice
if [ -z "$choice" ]; then
    echo "ERROR: Input cannot be empty."
    exit 1
elif [ "$choice" == "Window" ]; then
    echo "Greetings! You have selected a Window seat."
elif [ "$choice" == "Middle" ]; then
    echo "Greetings! You have selected a Middle seat."
elif [ "$choice" == "Aisle" ]; then
    echo "Greetings! You have selected an Aisle seat."
    echo "Your $choice is not valid, try again."
fi
