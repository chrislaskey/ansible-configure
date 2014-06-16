#!/usr/bin/env bash

# Nagios Server | Create htpasswd
#
# Ansible has a built-in module for managing htpasswd files. In Ansible 1.5.5
# this was a bit buggy even after passlib was installed. This is a temporary
# fix.

path=$1
username=$2
password=$3

if ! htpasswd -b -c "$path" "$username" "$password"; then
	echo "ERROR: could not create htpasswd file"
	exit 10
fi

echo "Successfully creating htpasswd at ${path}"
