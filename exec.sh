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


warning_count=0
for i in $(cat LIST);
do
    # check if the file being read exists
    if [[ !(-e $i) ]]; then
        echo "============*WARNING*============"   
        echo "[ $i ] does not exists, please check it!"
        echo -e "================================="
        warning_count=$(($warning_count+1))
        continue
    fi

    # copy using -r if it is a dir
    if [[ -d $i ]]; then
        cp -r $i $backup_dir_name
        continue
    fi

    # just a normal copy if it is a file
    cp $i $backup_dir_name
done


# move to $1
if [[ -n $1 ]]; then
    mv $backup_dir_name $1
fi

if [[ $warning_count -ne 0 ]]; then
    echo -e "\nProgram finished with $warning_count warnings"
else
    echo -e "Program finished with 0 warnings"
fi

