# Create Users From List
Here's how you can use this script:

<ul>
<li>Create a file called usernames.txt with a list of usernames you want to create for example:</li>
<ul>
```
john
jane
jimmy

<li>Save the create_users.sh script to a file.</li>
<li>Open a terminal and navigate to the directory where the files are located.</li>
<li>Make the create_users.sh script executable by running the command:</li>
```
chmod +x create_users.sh

```
<li>Run the script with the usernames.txt file as an argument by running the command:</li>
```
./create_users.sh usernames.txt

```
</ul>
<p>This script reads the list of usernames from the file provided as an argument, 
creates a user account for each one using the useradd command, and sets the password for each user to the same value as their username using the chpasswd command..
<p>
