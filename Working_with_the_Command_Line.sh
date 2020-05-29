#!/bin/bash

# Working_with_the_Command_Line
 
# In this project, we created and ran a Python script on the command line. Here's a rough outline of the steps in this exercise:
 
# - Create a Python script.
# - Create a virtual environment.
# - Change file permissions.
# - Execute a Python script from the command line.

# - Familiarize yourself with the current folder.
#     - Change out of the current directory, then back in.
#     - Print the path of the current folder to the standard output.

cd ..
cd ~
pwd


# - Create a Python script that takes in a command line argument and prints it out.
#     - Use output redirection or a command line editor to create a Python script called `script.py` in the `/home/user/` folder.
#     - Add code to the file that will read the second command line argument we pass in and print it out.

echo -e 'import sys\n\nif __name__ == "__main__":\n    print(sys.argv[1])' > script.py


# - Edit the file permissions for `script.py` so that only the current user can access it.
#     - Assign read, write, and execute permissions to the current user.
#     - Don't assign any permissions to your group, or to other users.

chmod 0700 script.py


# - Create a Python 3 virtualenv called `script`.
# - Activate the `script` virtualenv.

virtualenv -p /usr/bin/python3 script
source script/bin/activate


# - Create a folder called `printer` in the current user's home directory (`/home/user/`).
# - Move `script.py` into the `printer` folder.

mkdir printer
mv script.py printer


# - Change the current directory to the `printer` directory.
# - Execute `script.py`, and pass in the string `I'm so good at challenges!`.

cd printer
python script.py "I'm so good at challenges!"
