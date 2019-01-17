#!/bin/sh
[ "${TERM:-none}" = "linux" ] && \
    printf '%b' '\e]P0212121
                 \e]P1e53935
                 \e]P243a047
                 \e]P3fdd835
                 \e]P41e88e5
                 \e]P5d81b60
                 \e]P600acc1
                 \e]P7e0e0e0
                 \e]P8616161
                 \e]P9ff0000
                 \e]PAff5a36
                 \e]PBff00ff
                 \e]PC6d4c41
                 \e]PD424242
                 \e]PE9e9e9e
                 \e]PFf5f5f5
                 \ec'
