#!/bin/bash
#

name=$1

sudo apt-get install $name -y > /dev/null

echo "*********completed*******"
