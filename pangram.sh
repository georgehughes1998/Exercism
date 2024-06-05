#!/usr/bin/env bash

ord() { echo $(printf "%d" "'$1'"); }

arr=( $(for i in {0..26}; do echo 0; done) )
for ((i=0;i<${#1};i++)); do
	letter=${1:$i:1}
	letter=${letter^}
	val=$(($(ord $letter)-65))
	[ $val -ge 0 ] && [ $val -le 25 ] && arr[$val]=1
done

for ((i=0;i<26;i++)); do
	((sum+=arr[$i]))
done

[ $sum == 26 ] && echo true || echo false

