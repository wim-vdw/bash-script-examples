#!/usr/bin/env bash

function control_c() {
  echo "CTRL-C has been executed."
  exit
}

function end_script() {
  echo "End of the script."
}

trap control_c SIGINT
trap end_script EXIT

function start_script() {
  echo "Start of the script."
  echo "Script can be cancelled via CTRL-C."
}

function display_hello() {
  counter=1
  while [ "$counter" -le 5 ]; do
    echo "Hello"
    sleep 1s
    counter=$((counter + 1))
  done
}

start_script
display_hello
