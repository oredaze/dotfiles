#!/bin/bash

function main() {
    rawnumber=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | sed 's/[^0-9.]//g')
    VOL=$(awk -v num="$rawnumber" 'BEGIN { printf "%.0f", num * 100 }')
    IS_MUTED=$(wpctl status | sed -n 's/.*│\(.*MUTED\)].*/&/p' | sed -n 's/.*\[vol: [0-9.]* \(MUTED\)\]/\1/p')

    action=$1
    if [ "${action}" == "up" ]; then
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
    elif [ "${action}" == "down" ]; then
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    elif [ "${action}" == "mute" ]; then
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    elif [ "${action}" == "mic" ]; then
        wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
    else
        if [ "${IS_MUTED}" != "" ]; then
            echo "Muted"
        else
            echo "${VOL}%"
        fi
    fi
}

main $@
