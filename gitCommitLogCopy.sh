#!/bin/sh

line=$1
if [ "$1" = "" ]; then
    line="1"
fi
git log --oneline|head -$line|tail -1|cut -d" " -f1|pbcopy
printf "copy "
pbpaste
