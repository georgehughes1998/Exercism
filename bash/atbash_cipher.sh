#!/usr/bin/env bash

plain=abcdefghijklmnopqrstuvwxyz
cipher=zyxwvutsrqponmlkjihgfedcba
stripchars="[ ,.]"

translate() {
	word=${1,,}
	word=${word//$stripchars/""}
	alphabet1=$2
	alphabet2=$3
	do_skip=$4
	
	for ((i=0;i<${#word};i++)); do
		letter=${word:$i:1}
		tail=${alphabet1#*$letter}
		[[ $letter =~ [a-z] ]] && {
			index=$((${#alphabet1} - ${#tail} - 1));
			newletter=${alphabet2:$index:1};
		} || newletter=$letter
		newword=$newword$newletter
		[ $do_skip == true ] && [ $((i%5)) == 4 ] && newword="$newword "
	done

	echo $newword
}

encode() {
	echo $(translate "$1" $plain $cipher true)
}

decode() {
	echo $(translate "$1" $cipher $plain false)
}

case $1 in
	encode)
		echo $(encode "$2")
	;;
	decode)
		echo $(decode "$2")
	;;
	*)
		echo "-"
	;;
esac
