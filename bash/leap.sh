#!/usr/bin/env bash

divisible() { [ $(($1 % $2)) == 0 ]; }

[ $# == 1 ] || { echo "Usage: leap.sh <year>"; exit 1; }
[[ $1 =~ ^[0-9]+$ ]] || { echo "Usage: leap.sh <year>"; exit 1; }

divisible $1 4 && { ! divisible $1 100 || divisible $1 400; } && echo true || echo false
