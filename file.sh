#!/bin/bash

# 1. Ask for directory name
read -p "Enter name of the new directory: " name

# 2. Exit if the user didn't type anything and if the directory already exist

# 3. Create and enter directory (Using quotes for safety)
# Using quotes enables name variable to accept directory names with spacing instead\
# Of creating multiple directories ie if the intention is to create one single directory.
# Enclosing the "name" in quotes enables it to interpret the input as one directory name.

# The above block of code could also be achieved by this single line:

if [[ -z "$name" ]]; then
 echo "No name provided, aborting." >&2
 exit 1
fi

if [[ -d "$name" ]]; then
 echo "$name already exists, aborting." >&2
 exit 1
fi
mkdir -p "$name"


cd "$name" || exit # if changing into the new directory fails by using ||, the program exits.
echo "Current directory: $(pwd)"

# 4. Create files and verify
touch awk.txt sed.txt grep.txt # touch awk.txt sed.txt grep.txt ; ls -l can also be used.
ls -l

# 5. Add content.
content="awk is used to extract columns of a record separated using a delimiter"
echo "$content" > awk.txt
echo "$content" > sed.txt
echo "$content" > grep.txt

# 6. Display
cat awk.txt sed.txt grep.txt

# 7. Cleanup
echo "Goodbye $USER. That was a blast!"
cd ..
rm -rf "$name"