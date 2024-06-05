#!/usr/bin/env bash

if [ $(($1 % 3)) == 0 ]; then
	RESULT=${RESULT}Pling
fi
if [ $(($1 % 5)) == 0 ]; then
	RESULT=${RESULT}Plang
fi
if [ $(($1 % 7)) == 0 ]; then
	RESULT=${RESULT}Plong
fi

echo ${RESULT:-$1}

