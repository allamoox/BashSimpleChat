#!/bin/bash
if [ -z "$2" ] ; then
	echo "Error... Please enter $0 First Nickname Second Nickname"
	exit 1
fi

FirstUser=/tmp/${1}
SecondUser=/tmp/${2}
mkfifo $FirstUser
mkfifo $SecondUser
cat $SecondUser &
echo "$1 joined" ; cat >> $FirstUser

