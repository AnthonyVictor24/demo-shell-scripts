#!/bin/bash
#
read -p "Please enter the user name to reset the password: " user_name
<<sample
if [ $(cat /etc/passwd | grep $user_name | wc -l) -ne 0 ]
then
	read -p "Please enter the new password to be reset: " pass_word
	echo -e "$pass_word\n$pass_word" | sudo passwd $user_name
	echo "password reset successfully"
	echo "*****your new password is $pass_word*******"
else
	echo "******please enter the valid user name**********"
fi
sample


if id $user_name &> /dev/null
then
	read -p "Please enter the new password to be reset: " pass_word
        echo -e "$pass_word\n$pass_word" | sudo passwd $user_name
        echo "password reset successfully"
        echo "*****your new password is $pass_word*******"
else 
	echo "******please enter the valid user name**********"
fi



