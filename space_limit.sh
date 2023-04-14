#!/bin/bash

# Define the disk space limit in KB (20GB)
LIMIT=20971520

# Check if edquota is installed
if ! command -v edquota &> /dev/null
then
    echo "edquota could not be found. Please install edquota before running this script."
    exit 1
fi

# Loop through each line in the usernames.txt file
while read username; do
    # Set the disk space limit for the user
    edquota -u "$username" <<END
$LIMIT $LIMIT 0 0 0 0
END

    # Print a message indicating that the user's disk space limit has been set
    echo "Disk space limit of 20GB has been set for user '$username'"
done < usernames.txt
