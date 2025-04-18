#!/usr/bin/bash
# Backup-YYYY-MM-DD

# set the name of the backup directory
backup_dir_name=Backup-$(date +"%Y-%m-%d")

# delete the backup directory if it already exists
if [[ -d $backup_dir_name ]]; then
    rm -rf $backup_dir_name
fi

# make the backup directory
mkdir $backup_dir_name


for i in $(cat list);
do
    if [[ !(-e $i) ]]; then
        echo "============*WARNING*============"   
        echo "[ $i ] does not exists, please check it!"
        echo -e "================================="
        continue
    fi

    if [[ -d $i ]]; then
        cp -r $i $backup_dir_name
        continue
    fi

    cp $i $backup_dir_name
done


if [[ -n $1 ]]; then
    echo "is not null"
fi

