#!/bin/bash

FIRST_NAME="Wim"
LAST_NAME="Van den Wyngaert"
echo "Fullname: $LAST_NAME, $FIRST_NAME"

HOST="Hostname: $HOSTNAME"
echo "$HOST"

CURRENT_DATE=$(date)
echo "Current date: $CURRENT_DATE"

A=10
B=20
RESULT=$((A + B))
echo "$A + $B = $RESULT"
