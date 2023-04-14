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
  
  # Prompt the user for password choice for each user
  echo "Do you want to set the default password same as the username for user $username? (y/n)"
  read -r choice

  if [ "$choice" = "y" ]; then
    password="$username"
  else
    password=""
  fi
  
  echo "Creating user $username with password $password"
  adduser $username --disabled-password --gecos ""  # create user with no comments
  
  if [ "$password" != "" ]; then
    echo "$username:$password" | chpasswd
  fi
done < $filename

echo "User creation complete."
