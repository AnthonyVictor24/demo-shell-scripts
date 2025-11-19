#!/bin/bash
#
echo "Title is $0"

echo "1st idiot is $1"

echo "2nd idiot is $2"

echo "3rd idiot is $3"

#echo "idiots are $@"

#echo "tot no.of idiots $#"

if [ $# -eq 0 ]
then 
	echo "please enter atleast one arg"
else 
	echo "idiots are $@"
fi	
