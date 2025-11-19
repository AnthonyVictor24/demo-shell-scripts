#!/bin/bash

read -p "Please enter the user name: " user_name

name=$user_name

if [ ${#name} -eq 0 ]
then
	echo "u did not entered the name...."
else
	echo "Thanks for entering the username"
fi

