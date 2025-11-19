#!/bin/bash
#

#creating array to store files

list=( $(ls /home/ubuntu/sample | sort) )

size=${#list[@]}

if [ $size -gt 3 ]
then
     for ((i=0;i<2;i++))
     do
	     rm -r "/home/ubuntu/sample/${list[i]}"
     done
fi
