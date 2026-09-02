# Linux Homework Tasks

## Task 1: Soft Link & Hard Link
I practiced making soft and hard links to see how they are different.

*   **Soft Links (`ln -s`):** These are basically shortcuts. If you delete the main file, the shortcut breaks and stops working.
*   **Hard Links (`ln`):** These are like making a clone of the actual data. Deleting the original file doesn't affect it because the data is still there. 

I tried creating and deleting both types. This is really useful to know for interviews because it shows how Linux stores files.

## Task 2: adduser vs useradd
I learned the difference between these two commands for making users.

*   **`useradd`:** This is a basic command. It just adds the user but doesn't set up a home folder or ask for a password by default.
*   **`adduser`:** This one is much better on Ubuntu. It automatically creates the home directory and asks for the password step by step.

I used `sudo adduser testuser` to create a test user, and it was much easier to use.

## Task 3: journalctl
I didn't know about `journalctl` before, but now I know it's a great tool for checking system and service logs.

*   **System Logs:** I practiced checking the main system boot logs.
*   **Service Logs:** I also looked at the logs for a specific service using `journalctl -u ssh.service`. 

It helps a lot to find out why a service isn't working or if something went wrong.

## Task 4: Linux Command Cheat Sheet
I went through the cheat sheet and practiced the commands on my terminal. Here are 12 common commands I learned and tried out:

1.  **`ls`**: Lists all the files and folders in the current directory.
2.  **`cd`**: Changes the directory so I can move around folders.
3.  **`pwd`**: Shows the full path of the folder I am currently in.
4.  **`mkdir`**: Creates a new, empty directory.
5.  **`rm`**: Deletes files or folders (using `rm -r`).
6.  **`cp`**: Copies files or folders from one place to another.
7.  **`mv`**: Moves or renames files and folders.
8.  **`cat`**: Reads a file and prints the text on the screen.
9.  **`grep`**: Searches for a specific word or pattern inside files.
10. **`chmod`**: Changes the permissions of a file (like making a script executable).
11. **`chown`**: Changes the owner of a file.
12. **`sudo`**: Runs a command with admin (root) privileges.

Now I understand what they do and how to use them. This makes using the Linux terminal a lot faster for me.
