#!/bin/bash
#

file=( $(printf "%s\n" /home/ubuntu/* | sort) )
name=()
for ((i=0;i<${#file[@]};i++))
do
	name+=( $(basename ${file[i]}) )
done
	
echo "${file[@]}"

echo "${name[@]}"
