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

And here is what the script saved inside `test_script_dir/processes.txt` to show all the running processes:

```text
UID          PID    PPID  C STIME TTY          TIME CMD
root           1       0  3 16:35 ?        00:00:00 /sbin/init
root           2       1  0 16:35 ?        00:00:00 /init
root           6       2  0 16:35 ?        00:00:00 plan9 --control-socket 7 --log-level 4 --server-fd 8 --pipe-fd 10 --log-truncate
root          47       1  1 16:35 ?        00:00:00 /usr/lib/systemd/systemd-journald
systemd+      81       1  0 16:35 ?        00:00:00 /usr/lib/systemd/systemd-resolved
root          87       1  1 16:35 ?        00:00:00 /usr/lib/systemd/systemd-udevd
root         156       1  0 16:35 ?        00:00:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         157       1  0 16:35 ?        00:00:00 /usr/sbin/cron -f -P
message+     158       1  0 16:35 ?        00:00:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         175       1  1 16:35 ?        00:00:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root         183       1  0 16:35 ?        00:00:00 /usr/lib/systemd/systemd-logind
root         186       1  0 16:35 ?        00:00:00 /usr/libexec/wsl-pro-service
syslog       212       1  0 16:35 ?        00:00:00 /usr/sbin/rsyslogd -n -iNONE
root         223       1  0 16:35 hvc0     00:00:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d --keep-baud 115200,57600,38400,9600 - vt220
root         231       1  0 16:35 tty1     00:00:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
root         244       1  1 16:35 ?        00:00:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      248     156  0 16:35 ?        00:00:00 /usr/sbin/chronyd -n -F 1 -x
_chrony      265     248  0 16:35 ?        00:00:00 /usr/sbin/chronyd -n -F 1 -x
root         338       1  0 16:35 ?        00:00:00 /usr/lib/systemd/systemd-timedated
root         385       2  0 16:35 ?        00:00:00 login -- shreesha
shreesha     431       1  0 16:35 ?        00:00:00 /usr/lib/systemd/systemd --user
shreesha     435     431  0 16:35 ?        00:00:00 (sd-pam)
shreesha     463     385  0 16:35 pts/1    00:00:00 -bash
root         523       2  0 16:35 ?        00:00:00 /init
root         524     523  0 16:35 ?        00:00:00 /init
root         525      87  0 16:35 ?        00:00:00 (udev-worker)
shreesha     526     524  0 16:35 pts/0    00:00:00 /bin/bash ./sys_info.sh
root         527      87  0 16:35 ?        00:00:00 (udev-worker)
root         528      87  0 16:35 ?        00:00:00 (udev-worker)
root         529      87  0 16:35 ?        00:00:00 (udev-worker)
root         530      87  0 16:35 ?        00:00:00 (udev-worker)
root         531      87  0 16:35 ?        00:00:00 (udev-worker)
shreesha     538     526  0 16:35 pts/0    00:00:00 ps -ef
```
