#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]
  then
    echo "Please provide a filename containing a list of users."
    exit 1
fi

# Read the filename from the command line argument
filename=$1

# Create a user for each line in the file
while read -r line; do
  username="$line"
  echo "Creating user $username"
  useradd $username
done < $filename

echo "User creation complete."
