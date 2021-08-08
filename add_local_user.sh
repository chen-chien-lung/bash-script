#!/bin/bash

#check if the user s root
if [[ "${UID}" -eq 0 ]]
then
	echo "you are root"
else
	echo "you are not root"
	exit 1
fi

read -p 'Exter the usernmae to create: ' USER_NAME

read -p 'Enter the comment: ' COMMENT

read -p 'Enter password to use the the account: ' PASSWORD


useradd -c "${COMMENT}" -m ${USER_NAME}
echo "create user with exit ${?}"

echo ${PASSWORD} | passwd --stdin ${USER_NAME}
echo "set password with exit ${?}"

echo $(tail -3 /etc/passwd)



