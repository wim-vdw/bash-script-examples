#!/usr/bin/env bash

names=()
names+=("Wim Van den Wyngaert")
names+=("Eden Hazard")

products=("Python" "Bash" "Javascript" "Docker" "Linux")

display_name() {
  local NAME=$1
  echo "Name: $NAME"
}

display_names() {
  counter=1
  for name in "${names[@]}"; do
    echo "($counter) Length of name $name: ${#name}"
    ((counter++))
  done
}

display_products() {
  counter=1
  for product in "${products[@]}"; do
    echo "($counter) Length of product $product: ${#product}"
    ((counter++))
  done
}

usage() {
  echo "Usage: $0 [-n] [-p] [-d NAME]"
}

names_disp=false
products_disp=false
name_disp=false
error=false

while getopts ":npd:" opt; do
  case $opt in
  n)
    names_disp=true
    ;;
  p)
    products_disp=true
    ;;
  d)
    name_disp=true
    NAME=$OPTARG
    ;;
  ?)
    error=true
    ;;
  esac
done

shift $((OPTIND - 1))

if [ "$error" = true ]; then
  usage
  exit 1
fi

if [ "$names_disp" = true ]; then
  display_names
fi

if [ "$products_disp" = true ]; then
  display_products
fi

if [ "$name_disp" = true ]; then
  display_name "$NAME"
fi
