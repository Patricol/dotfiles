#!/bin/bash

#w -hs
current_user=`id -un`

function other_users() {
    other_users_sessions=`w -hs | grep -vE "^$current_user" | wc -l`
    if [ "$other_users_sessions" -gt 0 ]; then
        true
    else
        false
    fi
}

function other_sessions() {
    other_sessions=`w -hs | wc -l`
    if [ "$other_sessions" -gt 1 ]; then
        true
    else
        false
    fi
}

if other_sessions; then
    echo "%{T5}%{T-}"
else
    echo ""
fi
