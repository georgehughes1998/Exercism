#!/usr/bin/env bash

if [ "$#" == 1 ]; then
	echo "Hello, $1"
else
	echo "Usage: $(basename $0) <person>"; exit 1
fi
