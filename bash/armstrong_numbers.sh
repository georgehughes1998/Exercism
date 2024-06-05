#!/usr/bin/env bash

for ((i=0;i<${#1};i++)); do
	res=$((res+${1:i:1}**${#1}))
done

[ $res == $1 ] && echo true || echo false

