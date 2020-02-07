#!/bin/bash

echo "20 + 10 = $((20 + 10))"
echo "20 - 10 = $((20 - 10))"
echo "20 * 10 = $((20 * 10))"
echo "20 / 10 = $((20 / 10))"
echo "10 / 3 = $((10 / 3))"
echo "10 % 3 = $((10 % 3))"
echo "2 ** 3 = $((2 ** 3))"

echo -n "Enter a number: "
read -r NUMBER
if [ $((NUMBER % 2)) -eq 0 ]; then
  echo "Even number"
else
  echo "Odd number"
fi

echo -n "Enter number of seconds: "
read -r seconds
hours=$((seconds / 3600))
seconds=$((seconds % 3600))
minutes=$((seconds / 60))
seconds=$((seconds % 60))
echo "$hours hour(s) $minutes minute(s) $seconds second(s)"
