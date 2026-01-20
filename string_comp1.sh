#!/bin/bash
#Write a script which reads two strings as arguments and then:
#Tests to see if both strings are of zero length, telling the user if so.
read -p "Enter first string: " str1
read -p "Enter second string: " str2

#Tests to see if the first string is of zero length, and if the other is of non-zero length, telling the user of both results.

if [ -z "$str1" ] && [ -z "$str2" ]; then
    echo "Both strings are of zero length."
elif [ -z "$str1" ] && [ -n "$str2" ]; then
    echo "The first string is of zero length, and the second string is of non-zero length."
fi

#Determines the length of each string, and reports on which one is longer or if they are of equal length.
len1=${#str1}
len2=${#str2}

if [ $len1 -gt $len2 ]; then
    echo "The first string ($str1) of length $len1 is longer than the second string ($str2) of length $len2."
elif [ $len1 -lt $len2 ]; then
    echo "The second string ($str2) of length $len2 is longer than the first string ($str1) of length $len1."
else
    echo "Both strings are of equal length."
fi
#Compares the strings to see if they are the same, and reports on the result.
if [ "$str1" == "$str2" ]; then
    echo "The strings are the same."
else
    echo "The strings are different."
fi
#End of script