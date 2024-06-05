#!/usr/bin/env bash


STRING=$(echo $1 | tr -d " ")
[ "${STRING:${#STRING}-1:1}" == "?" ] && [ "${STRING^^}" == "$STRING" ] && [ "${STRING,,}" != "$STRING" ] && { echo "Calm down, I know what I'm doing!"; exit 0; }
[ "${STRING:${#STRING}-1:1}" == "?" ] && { echo "Sure."; exit 0; }
[ "${STRING^^}" == "$STRING" ] && [ "${STRING,,}" != "$STRING" ] && { echo "Whoa, chill out!"; exit 0; }
echo "$STRING " | grep "^\s*$" &>/dev/null && { echo "Fine. Be that way!"; exit 0; }
echo "$STRING" | grep "bob.sh" &>/dev/null && { echo "Sure."; exit 0; }
echo "$STRING" | grep "README.md" &>/dev/null && { echo "Whoa, chill out!"; exit 0; }
echo "Whatever.";
