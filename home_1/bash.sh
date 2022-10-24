#!/bin/sh

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

# What to backup. 
backup_files="./devops"

# Where to backup to.
dest="./backup_devops"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="test_backup.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest"

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo "Backup finished. Backup file - $archive_file"
date