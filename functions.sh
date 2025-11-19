#!/bin/bash
#
function printing {
	read -p "please enter user name: " user_name
	echo "$user_name"
}

#printing
#printing
#printing

for ((i=1;i<=3;i++))
do 
	echo "$i"
	printing
done


