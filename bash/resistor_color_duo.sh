#!/usr/bin/env bash

declare -A colour_map
colour_map["black"]=0
colour_map["brown"]=1
colour_map["red"]=2
colour_map["orange"]=3
colour_map["yellow"]=4
colour_map["green"]=5
colour_map["blue"]=6
colour_map["violet"]=7
colour_map["grey"]=8
colour_map["white"]=9

[ ${colour_map[$1]} ] && [ ${colour_map[$2]} ] && echo $((10#${colour_map[$1]}${colour_map[$2]})) || { echo invalid color; exit 1; }
