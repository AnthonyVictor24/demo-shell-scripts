#!/bin/bash
#
file=( $(ls /home/ubuntu | sort) )

#echo "${file[@]}"

name=()

for ((i=0;i<${#file[@]};i++))
do
	name+=( $(basename ${file[i]}) )
done

echo "${name[@]}"

