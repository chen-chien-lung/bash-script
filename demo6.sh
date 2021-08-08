#!/bin/bash

#This script generate a random password for each user specified on the command line

#display what the user typed on the command line.
echo "You executed this command: ${0}"

#display the path and filename of the script.
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script."

#tell them how many arguments they passed in.

#(Inside the script they are parameters, outside they are arguments)
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} argument(s) on the command line."

#make sure they at least supply one argument.
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
	echo "USAGE: ${0} USER_NAME [USER_NAME]... "
	exit 1
fi

#generate and display a password for each parameter.
for USER_NAME in "${@}"
do
	PASSWORD=$(date +%s%N | sha256sum | head -c48)
	echo "${USER_NAME}: ${PASSWORD}"
done
