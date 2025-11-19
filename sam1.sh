#!/bin/bash
#

file=( $(ls /home/ubuntu/sample | sort) )

echo "${file[@]}"
