#!/usr/bin/bash
# Backup-YYYY-MM-DD

# set the name of the backup directory
backup_dir_name=Backup-$(date +"%Y-%m-%d")

# delete the backup directory if it already exists
if [[ -d $backup_dir_name ]]; then
    rm -rf $backup_dir_name
fi

mkdir $backup_dir_name

if [[ -n $1 ]]; then
    echo "is not null"
fi

