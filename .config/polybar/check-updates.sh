#!/bin/bash

check_updates() {
    local updates=0
    
    use_method() {
        declare program="$1" command="$@"
        if which "$program" &> /dev/null; then
            local found_updates="$("$command" 2> /dev/null | wc -l)"
            [[ "$found_updates" -ge "$updates" ]] && updates="$found_updates"
        fi
    }

    use_method checkupdates
    use_method yay -Qu

    if [[ "$updates" -gt 0 ]]; then
        # font indexes for polybar
        local material_icons=4
        local monospace_fill=3
        local output="%{T$material_icons}%{T-}%{T$monospace_fill}$updates%{T-}"
    fi
    echo "$output"
    unset -f use_method
}

check_updates
unset -f check_updates

