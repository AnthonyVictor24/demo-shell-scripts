#!/bin/bash
#
<<example1
echo "******************Creating User********************"

read -p "Please enter the user name: " user_name

read -p "Please enter the password: " pass_word

sudo useradd -m $user_name -s /bin/bash

echo -e "$pass_word\n$pass_word" | sudo passwd $user_name

echo "*****************User created successfully*******************"
example1
#
#
#
echo "******************Creating User********************"

read -p "Please enter the user name: " user_name

if [ $(cat /etc/passwd | grep $user_name | wc -l) -eq 0 ]
then
	sudo useradd -m $user_name -s /bin/bash

	echo "*****************User created successfully*******************"
else
	echo "User already exists"
fi	
