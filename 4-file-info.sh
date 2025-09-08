#!/bin/bash

# Prompt the user to enter a file name/path
if [ -t 0 ]; then
  echo "Please enter a file name or path:"
fi
read file


# Check if the file exists
if [ -e "$file" ]; then

  # Variables to store file information (only if file exists)
  fsize=$(stat -c %s "$file")
  permissions=$(stat -c %A "$file")
  created=$(stat -c %w "$file")
  modified=$(stat -c %y "$file")

  # If the file exists, print the following information:
    echo "-----------------"
    echo "File Information:"
    echo "-----------------"
    echo "File: $file"
    echo "Size: $fsize bytes"
    echo "Permissions: $permissions"
    echo "Created: $created"
    echo "Modified: $modified"
    echo "-----------------"
else
  # if the file doesn't exist, print an error message
    echo "Error: File '$file' does not exist."
fi

#Passed all tests
