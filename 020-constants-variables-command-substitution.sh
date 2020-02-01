#!/bin/bash

# No difference between variables and constants.
# Put variable names in lowercase and constant names in uppercase.

# Constants.
FIRST_NAME="Wim"
LAST_NAME="Van den Wyngaert"
echo "Fullname: $LAST_NAME, $FIRST_NAME"

# Constants and variable.
A=10
B=20
result=$((A + B))
echo "$A + $B = $result"
result=$((A * B))
echo "$A * $B = $result"

# Environment variables (HOSTNAME and USER).
HOST="Hostname: $HOSTNAME"
USERNAME="User: $USER"
echo "$HOST"
echo "$USERNAME"

# Command substitution.
CURRENT_DATE=$(date)
echo "Current date: $CURRENT_DATE"
DIR_CONTENTS=$(ls -ltr)
echo -e "Directory contents:\n$DIR_CONTENTS"
