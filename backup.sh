#!/bin/bash
#
<<info
Here iam creating backups of all scripts...
src = /home/ubuntu/scripts/
dest = /home/ubuntu/backups
info

src=$1
dest=$2
timestamp=$(date '+%y-%m-%d-%h-%H-%M')

zip -r $dest/backupz-$timestamp.zip $src > /dev/null

aws s3 sync $dest s3://demo-backups-v

echo "*******Backup Completed &uploaded to s3*******"

