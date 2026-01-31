#!/bin/bash

echo "Data back/archival Tool"

export timeStamp=`date +%F_%M_%S`
export argNum=2
export toolName="backItUp.sh"
export sourceDir=$1
export backupDir=$2

if [ $# -ne $argNum ]; then
  echo "Usage: ${toolName} [source dir] [backup dir]"
  exit 
else
  if [ -d "$sourceDir" ] && [ -d "$backupDir" ]; then
    LAST_DIR=$(basename "$sourceDir")
    echo "Backing up $DIR_NAME"
    cd $sourceDir/..
    tar -cvzf $backupDir/${LAST_DIR}-${timeStamp}.tar.bz2 ./$LAST_DIR
  else
    echo "Error: invalid path given"
    echo "source directory: $sourceDir"
    echo "Archive directory: $backupDir"
    exit
  fi
fi
