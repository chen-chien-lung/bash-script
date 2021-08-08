#!/bin/bash

#display the UID and username of the user execting this script.
#display if the user if the root user or not.

# display the UID
echo "Your UID is ${UID}"

# display the username
#USER_NAME=$(id -nu)
USER_NAME=`id -nu`
echo "your username is ${USER_NAME}"


#display if the user is the root user.
if [[ "${UID}" -eq 0 ]]
then
	echo 'You are root.'
else
	echo 'You are not root.'
fi



