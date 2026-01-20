#!/bin/bash
# This script compares two strings provided as input arguments
read -p "Enter first string: " str1
read -p "Enter second string: " str2

# check if both strings are provided
if [[ -z "$str1" || -z "$str2" ]]; then
    echo "ERROR: Both strings must be provided."
    exit 1
fi
# compare the strings using double brackets
if [ "$str1" == "$str2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi

# compare the strings using single brackets
if [ "$str1" = "$str2" ]; then
    echo "Using single brackets: The strings are equal."
else
    echo "Using single brackets: The strings are not equal."
fi

# compare the strings using single brackets with no quotes
if [ $str1 = $str2 ]; then
    echo "Using single brackets without quotes: The strings are equal."
else
    echo "Using single brackets without quotes: The strings are not equal."
fi

# compare the strings using double brackets with no quotes
if [[ $str1 == $str2 ]]; then
    echo "Using double brackets without quotes: The strings are equal."
else
    echo "Using double brackets without quotes: The strings are not equal."
fi

# End of script
