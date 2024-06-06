#!/usr/bin/env bash

declare -A reverse
for ((i=0;i<${#1};i++)); do
	reverse[$((${#1}-i-1))]="${1:i:1}"
done
for ((i=0;i<${#1};i++)); do
	reverse_word="$reverse_word${reverse[$i]}"
done

echo "$reverse_word"
