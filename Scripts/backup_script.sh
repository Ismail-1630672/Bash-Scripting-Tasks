#!/bin/bash

# Backup Script - Create a script that copies all .txt files from a specified directory to a backup directory. If the backup directory doesn’t exist, the script should create it first. 

#I will use .sh files as I have them here in my current/main directory

backup_script() {

    local directory="$1"
    local backup_directory="$2"

    mkdir $backup_directory
    echo "backup directory $backup_directory created"

    timestamp=$(date +'%Y-%m-%d_%H-%M-%S')
    name="Backup_$timestamp".tar.gz
    tar -czf $backup_directory/$name $directory/*.sh
    echo "files from $directory have been backed up to $backup_directory"


}

backup_script "Scripts" "Archive"