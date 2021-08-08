#!/bin/bash

#diskplay the UID and username of the user executing the script

echo "Your UID is ${UID}"


UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}."
	exit 1
fi

#Display the username
USER_NAME=$(id -un)

#Test if the command succeeded
if [[ "${?}" -ne 0 ]]
then
	echo 'This id command did not execute seccessfully.'
	exit 1
fi
echo "Your username is ${USER_NAME}"


#You can use a string test conditional.
USER_NAME_TO_TEST_FOR='chenchienlung'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "YOUR username mactches ${USER_NAME_TO_TEST_FOR}"
fi

#test for !=(not equal) for the string
if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username does not matches ${USER_NAME_TO_TEST_FOR}"
	exit 1
fi

exit 0


