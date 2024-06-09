#!/usr/bin/env bash

SCALE=2

p="^-?[0-9.]+$"
[[ $1 =~ $p ]] || { echo Error; exit 1; }
[[ $2 =~ $p ]] || { echo Error; exit 1; }

distance=$(bc <<< "scale=$SCALE; sqrt($1 ^ 2 + $2 ^ 2)")

(($(echo "$distance > 10" | bc))) && { echo 0; exit 0; }
(($(echo "$distance > 5" | bc))) && { echo 1; exit 0; }
(($(echo "$distance > 1" | bc))) && { echo 5; exit 0; }
(($(echo "$distance >= 0" | bc))) && { echo 10; exit 0; }

