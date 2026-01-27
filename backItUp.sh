#!/bin/bash

# notes:
# archival tool is going to be tar
echo "Data back/archival Tool"

export toolName="backItUp.sh"
export sourceDir=$1
export backupDir=$2

#echo "Usage: ${toolName} [source dir] [backup dir]"

#echo "validate source dir if not exist error"
if [ -d "$sourceDir" ] && [ -d "$backupDir" ]; then
    echo "Backing up $soourceDir"
    # Commands to run if the directory exists
    cd $sourceDir
    tar -cvzf $backupDir/backup.tar.bz2 ./*
else
    echo "Directory $sourceDir does not exist."
    # Commands to run if the directory does not exist (e.g., create it)
fi

#echo "if source dir exist then validate backup dir"

#echo "if both paths exist commence backup using tar"



