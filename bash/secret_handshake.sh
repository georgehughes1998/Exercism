#!/usr/bin/env bash

declare -A actions
actions[$((2#0001))]="wink"
actions[$((2#0010))]="double blink"
actions[$((2#0100))]="close your eyes"
actions[$((2#1000))]="jump"

reverse() { shopt -s extdebug; echo "${BASH_ARGV[@]}"; shopt -u extdebug; }

numbers=${!actions[@]}
(($(($1 & 2#10000 )))) || numbers=$(reverse ${numbers[@]})

for action in ${numbers[@]}; do
	(($(($1 & $action)))) && result="${result}${actions[$action]},"
	#echo $1 $action 
done

echo ${result%,}

