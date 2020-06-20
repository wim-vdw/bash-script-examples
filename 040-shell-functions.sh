#!/usr/bin/env bash

function_1() {
  echo "Hello world."
}

function_1

function_2() {
  # Return result of a function via stdout (echo).
  local NUM1=$1
  local NUM2=$2
  local RESULT=$((NUM1 + NUM2))
  echo "$RESULT"
}

echo "10 + 20 = $(function_2 10 20)"

function_3() {
  # Convert first argument to uppercase and store in local variable NAME.
  local NAME=${1^^}
  echo "Uppercase name: $NAME."
  # Convert first argument to lowercase and store in local variable NAME.
  local NAME=${1,,}
  echo "Lowercase name: $NAME."
}

NAME="Wim Van den Wyngaert"
echo "Name before function call: $NAME"
function_3 "$NAME"
echo "Name after function call: $NAME"

function_4() {
  return 0
}

function_4
echo "Return code from function: $?"

function_5() {
  return 1
}

function_5
echo "Return code from function: $?"
