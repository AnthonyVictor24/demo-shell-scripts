#!/bin/bash
#
#src /home/ubuntu/scripts/
#dest /home/ubuntu/backups
#here iam only last 3 backups(ie backup folder size should be 3) and removing old ones

src=$1
dest=$2
time_stamp=$(date '+%y-%m-%d-%h_%H_%M')

zip -r $dest/backupzZ-$time_stamp.zip $src >/dev/null

file_list=( $(ls /home/ubuntu/backups | sort) )

size=${#file_list[@]}

if [ $size -gt 3 ]
then
	delete_count=$(( size - 3 ))

	for ((i=0;i<$delete_count;i++))
	do
		rm -r "/home/ubuntu/backups/${file_list[i]}"
	done
fi

