
#!/usr/bin/env bash
set -euo pipefail

CURRENT_DATE=$(date)
HOSTNAME=$(hostname)
USERNAME=$(whoami)

echo "System Information Script"
echo "--------------------------"
echo "Date: $CURRENT_DATE"
echo "Hostname: $HOSTNAME"
echo "User: $USERNAME"
echo ""

echo "Disk Usage:"
df -h
echo ""


read -p "Enter a name for the new directory: " DIR_NAME

mkdir "$DIR_NAME"
echo "Directory '$DIR_NAME' created."

FILE_NAME="$DIR_NAME/processes.txt"
touch "$FILE_NAME"
echo "File '$FILE_NAME' created."


echo "Saving running processes to $FILE_NAME..."
ps -ef > "$FILE_NAME"

echo "Done! You can check the processes in $FILE_NAME."
