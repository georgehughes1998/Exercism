#!/bin/awk -f

END {
    if ($0 != "") print "One for " $0 ", one for me."; else print "One for you, one for me.";
}
