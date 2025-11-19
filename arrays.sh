#!/bin/bash
#

myarray=(vicky victor bindu)

myarray+=(venky vinay)

myarray[3]="orange"

myarray=($(printf "%s\n" "${myarray[@]}" | sort))

echo "${myarray[@]}"

#echo ${myarray[@]}

#echo ${#myarray[@]}

#for ((i=0;i<=${#myarray[@]};i++))
#do
#	echo "$i"
#	echo "the index: $i,the value: ${myarray[i]}"
#done

#files=($(ls))

#echo "${#files[@]}"
#echo "${files[@]}"
