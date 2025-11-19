#!/bin/bash
#

read -p "Please enter the user name to be deleted: " user_name

if [ $(cat /etc/passwd | grep $user_name | wc -l) -ne 0 ]
then
	sudo userdel $user_name
	echo "*******$user_name account deleted successfully*******"
else
	echo "*******Please enter the valid name******"
fi


