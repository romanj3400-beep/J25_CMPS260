#!/bin/bash

# notes:
# archival tool is going to be tar
echo "Data back/archival Tool"

export toolName="backItUp.sh"
export sourceDir=$1
export backupDir=$2

echo "Usage: ${toolName} [source dir] [backup dir]"

echo "validate source dir if not exist error"

echo "if source dir exist then validate backup dir"

echo "if both paths exist commence backup using tar"



