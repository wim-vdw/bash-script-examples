#!/bin/bash

echo "While loop:"
number=1
while [ "$number" -lt 5 ]; do
  echo "Number: $number"
  number=$((number + 1))
done

echo "Until loop:"
number=1
until [ "$number" -ge 5 ]; do
  echo "Number: $number"
  number=$((number + 1))
done

echo 'For loop:'
for i in word1 word2 word3; do
  echo $i
done

for i in *.sh; do
  echo "File: $i"
  echo "Lines: $(wc -l < $i)"
done

answer=
while [ "$answer" != "0" ]; do
  echo -n "Answer: "
  read -r answer
done
