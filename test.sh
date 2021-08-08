#!/bin/bash

echo 'Hello'

WORD='script'

echo "$WORD"


echo '$WORD'


echo "this is a shell $WORD"
echo "this is a shell ${WORD}"

echo "${WORD}ing is fun!"

# Create a new varible
ENDING='ed'

#combine the two variales.
echo "this is a ${WORD}${ENDING}"

# Reassignment
ENDING='ing'
echo "${WORD}${ENDING}"




