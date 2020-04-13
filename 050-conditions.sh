#!/bin/bash

if [ "$(whoami)" == "wim" ]; then
  echo "Name is Wim"
else
  echo "Name is not Wim"
fi

FILE="test.sh"
if [ -f "$FILE" ]; then
  echo "File $FILE exists"
else
  echo "File $FILE does not exist"
fi

NUMBER=2
if [ $NUMBER -eq 1 ]; then
  echo "Number is 1"
elif [ $NUMBER -eq 2 ]; then
  echo "Number is 2"
elif [ $NUMBER -eq 3 ]; then
  echo "Number is 3"
else
  echo "Other number"
fi

test "$(whoami)" != "root" && echo "You should run this script with root."

NUMBER=2
case $NUMBER in
  1 ) echo "Number is 1"
      ;;
  2 ) echo "Number is 2"
      ;;
  3 ) echo "Number is 3"
      ;;
  * ) echo "Other number"
esac

echo -n "Type a digit or a letter: "
read -r character
case $character in
  # Check for letters.
  [[:lower:]] | [[:upper:]] ) echo "You typed the letter $character"
                              ;;

  # Check for digits.
  [0-9] )                     echo "You typed the digit $character"
                              ;;

  # Check for anything else.
  * )                         echo "You did not type a letter or a digit"
esac