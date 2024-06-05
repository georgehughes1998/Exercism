#!/usr/bin/env bash

p="^[0-9 ]+$"
[[ $1 =~ $p ]] || { echo false; exit 0; } 
string=$(echo ${1//" "} | rev | cat)
[ ${#string} -le 1 ] && { echo false; exit 0; }

for ((i=0;i<${#string};i++)); do
	val=${string:i:1}
	#printf "$val "
	[ $(((i + 1) % 2)) == 0 ] && val=$((val*2))
	[ "$val" -gt 9 ] && val=$((val-9))
	((total+=val))
	#printf "$val "
done

#echo $total
[ $((total % 10 )) == 0 ] && echo true || echo false
