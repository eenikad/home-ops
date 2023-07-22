#!/bin/bash

DATASETS=( minio/backups nextcloud shares volumes backup immich )
TARGET_PATH=/Volumes/Backup

# Loop through datasets
for dataset in "${DATASETS[@]}";
do
        echo "Rysnc ${dataset} to ${TARGET_PATH}"
        rsync -av --rsync-path="sudo rsync" --delete peter@atlas:/tank/${dataset} ${TARGET_PATH}
done

echo "Backup done!"