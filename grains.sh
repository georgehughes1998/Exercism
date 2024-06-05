#!/usr/bin/env bash

[ $1 == total ] && { echo 18446744073709551615; exit 0; } || val=$1
[ "$val" -le 0 ] || [ "$val" -gt 64 ] && { echo "Error: invalid input"; exit 1; }
res=$((2**($val-1)))
res=${res/#-}
echo $res
