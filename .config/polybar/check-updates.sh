#!/bin/sh
if [ `which yay 2> /dev/null` ]; then
    check_command="yay -Qu"
else
    check_command="checkupdates"
fi

if ! updates=$($check_command 2> /dev/null | wc -l ); then
if ! updates=$(apt-get upgrade -s |grep -P '^\d+ upgraded'|cut -d" " -f1 2> /dev/null); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "%{T4}%{T-}%{T3}$updates%{T-}"
    #fonts: material icons and monospace-fill.
else
    echo ""
fi
