#!/bin/bash
#
# exit codes....what ever below the exit code will not executes
# exit 0 means success
# exit 1 means failure

var=$1

if [[ "$var" == "-c" || "$var" == "--create" ]]
then
	
	read -p "Please enter the user name: " user_name

	if id $user_name &>/dev/null
	then
	       echo "user $user_name already exists,Please enter new name"
		exit 1
 	fi

	echo "*****creating account*****"

	read -p "Please enter the password: " pass_word

	sudo useradd -m $user_name -s /bin/bash

	echo -e "$pass_word\n$pass_word" | sudo passwd $user_name &> /dev/null

	echo "User $user_name created successfully"

	exit 0

fi

if [[ "$var" == "-d" || "$var" == "--delete" ]]
then
	echo "*******Deleting the user*********"
	read -p "Please enter the user name to be deleted: " user_name
	
	if id $user_name &>/dev/null
	then
		sudo userdel -r $user_name
		echo "user $user_name deleted successfully"
		exit 0
	fi

	echo "Please enter the valid user name"
	exit 1
fi

if [[ "$var" == "-r" || "$var" == "--reset" ]]
then
	echo "**********Password Reset********"

	read -p "Please enter the user name: " user_name

	if id $user_name &> /dev/null
	then
		read -p "Please enter the new password: " password1

		read -p "Again enter the password: " password2

		if [[ "$password1" == "$password2" ]]
		then
		     echo -e "$password1\n$password2" | sudo passwd $user_name

		     echo "**************password updated successfully**************"

		     echo "Your updated password is $password1 to the user $user_name"

		     exit 0
		fi
		
		echo "****Password mismatch****"
	        exit 1
	fi

        echo "Please enter th valid user name"
	
	exit 1
fi

if [[ "$var" == "-l" || "$var" == "--list" ]]
then
	echo "*********Listing the users list with there user_id*************"

	awk -F: '{print $1,$3}' /etc/passwd

	exit 0
fi

if [[ "$var" == "-h" || "$var" == "-help" ]]
then

     echo "*******usage of the script******"

     echo "Please enter the valid aruguments"

     echo "like $0 -c or --create to create account
                $0 -d or --delete to delete account
		$0 -r or --reset to reset password
		$0 -l or --list to list users and UID"
fi








#echo "Please enter the valid arguments"
#exit 1
