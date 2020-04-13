#!/bin/bash

test_func() {
  local SLEEPTIME=$1
  sleep "$SLEEPTIME"
}

PIDARRAY=()
test_func 3 &
PIDARRAY+=($!)
test_func 3 &
PIDARRAY+=($!)
test_func 3 &
PIDARRAY+=($!)
echo "Waiting for child processes to finish."
echo "${PIDARRAY[@]}"
wait "${PIDARRAY[@]}"
echo "All done."
