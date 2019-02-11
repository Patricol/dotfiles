#!/usr/bin/env bash

check_other_sessions() {
    other_users() {
        local current_user="$(id -un)"
        local others="$(w -hs | grep -vE "^$current_user" | wc -l)"
        [[ "$others" -gt 0 ]]
        return $?
    }

    other_sessions() {
        local others="$(w -hs | wc -l)"
        [[ "$others" -gt 1 ]]
        return $?
    }

    if other_sessions; then
        local output='%{T5}%{T-}'
    fi
    echo "$output"
    unset -f other_users other_sessions
}

check_other_sessions
unset -f check_other_sessions

