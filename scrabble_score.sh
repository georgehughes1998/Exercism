#!/usr/bin/env bash

word=${1^^}
for ((i=0;i<${#word};i++)); do
	letter=${word:$i:1}
	case $letter in
		[AEIOULNRST]) score=1 ;;
		[DG]) score=2 ;;
		[BCMP]) score=3 ;;
		[FHVWY]) score=4 ;;
		[K]) score=5 ;;
		[JX]) score=8 ;;
		[QZ]) score=10 ;;
	esac
	((total+=score))
done
echo ${total:-0}
