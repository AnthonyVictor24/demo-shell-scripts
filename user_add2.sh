#!/bin/bash
#
read -p "enter name" user_name

sudo useradd -m $user_name -s /bin/bash

