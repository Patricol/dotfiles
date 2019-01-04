#!/bin/sh

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "%{T4}%{T-}%{T3}$updates%{T-}"
    #fonts: material icons and monospace-fill.
else
    echo ""
fi
