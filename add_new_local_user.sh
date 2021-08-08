#!/bin/bash

#check if the user s root
if [[ "${UID}" -eq 0 ]]
then
	echo "You are root"
else
	echo "You are not root"
	exit 1
fi

USER_NAME="${1}"
shift
COMMENT="${@}"
PASSWORD=$(date +%s%N | sha256sum | head -c48)

useradd -c "${COMMENT}" -m ${USER_NAME}
if [[ "${?}" -ne 0 ]]
then
	echo "Account create no successfully"
	exit 1
fi

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
        echo "Set password not successfully"
        exit 1
fi

passwd -e ${USER_NAME}

echo $(tail -3 /etc/passwd)
echo "USER NAME: ${USER_NAME}"
echo "PASSWORD: ${PASSWORD}"


