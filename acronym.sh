#!/usr/bin/env bash

IFS=" _-*"

for i in $1
do
	letter=${i:0:1}
	result="${result}${letter^^}"
done

echo $result
