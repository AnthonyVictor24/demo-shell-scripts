#!/bin/bash
#

echo "List of the users"

awk -F: '{print $1,$3}' /etc/passwd


