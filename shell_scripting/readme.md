# Shell Scripting Tasks

## Task 1: System Information Script
I wrote a shell script to automate checking some basic system info. It was really cool to put all the commands together in one file.

First, I used variables to store the output of commands like `date`, `hostname`, and `whoami`. Then I used `echo` to print them out nicely, along with `df -h` to check the disk space. 

I also practiced taking user input. I used `read -p` to ask for a folder name, then used `mkdir` and `touch` to create that folder and a text file inside it. Finally, I ran the `ps -ef` command to list all the running processes and used the `>` operator to redirect that huge list directly into the text file I just created, instead of flooding the screen.

Here is the output when I ran the script:

```text
System Information Script
--------------------------
Date: Wed Sep  2 16:35:54 UTC 2026
Hostname: shreesha
User: shreesha

Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
none            3.9G     0  3.9G   0% /usr/lib/modules/6.6.87.2-microsoft-standard-WSL2
none            3.9G  4.0K  3.9G   1% /mnt/wsl
drivers         360G  224G  136G  63% /usr/lib/wsl/drivers
/dev/sdd       1007G  1.6G  955G   1% /
none            3.9G   72K  3.9G   1% /mnt/wslg
none            3.9G     0  3.9G   0% /usr/lib/wsl/lib
rootfs          3.9G  2.7M  3.9G   1% /init
none            3.9G  544K  3.9G   1% /run
none            3.9G     0  3.9G   0% /run/lock
none            3.9G     0  3.9G   0% /run/shm
none            3.9G   76K  3.9G   1% /mnt/wslg/versions.txt
none            3.9G   76K  3.9G   1% /mnt/wslg/doc
C:\             360G  224G  136G  63% /mnt/c
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
tmpfs           3.9G     0  3.9G   0% /tmp
none            1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
none            1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
none            1.0M     0  1.0M   0% /run/credentials/console-getty.service
tmpfs           781M   12K  781M   1% /run/user/1000

Enter a name for the new directory: test_script_dir
Directory 'test_script_dir' created.
File 'test_script_dir/processes.txt' created.
Saving running processes to test_script_dir/processes.txt...
Done! You can check the processes in test_script_dir/processes.txt.
```
