#!/bin/awk -f
{
    acronym="";
    gsub("_", "", $0)
    split($0, words, /[ -]+/);
    for (word in words) { acronym=acronym toupper(substr(words[word],0,1)); }
    print acronym;
}
