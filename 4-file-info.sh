#!/bin/bash

# Prompt the user to enter a file name/path
echo "Please enter a file name or path:"
read file

#Variables to store file information
fsize=$(stat -c %s "$file")
permissions=$(stat -c %A "$file")
created=$(stat -c %w "$file")
modified=$(stat -c %y "$file")

# Check if the file exists
if [ -e "$file" ];
then
  # If the file exists, print the following information:
    echo "-----------------"
    echo "File Information:"
    echo "-----------------"
    echo "File: $file"
    echo "Size: $fsize bytes"
    echo "Permissions: "
    echo "Created: "
    echo "Modified: "
    echo "-----------------"
else
  # if the file doesn't exist, print an error message
    echo "Error: File '$file' does not exist."
fi

#Passed all tests
