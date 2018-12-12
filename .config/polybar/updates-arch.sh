#!/bin/sh

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "%{A1:terminator -x /home/patricol/.bin/expect_syu:}⬆️$updates%{A}"
else
    echo ""
fi
