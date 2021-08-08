#!/bin/bash

#This script generates a list of random passwords

# a random number as password

PASSWORD="${RANDOM}"
echo "${PASSWORD}"

# thre  random number togehter
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# use a current date/time as a basic for password
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# use nanosecond to act as administration
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# a better password
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

# an even better password.
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"

# append special character to password
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_+=' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"
