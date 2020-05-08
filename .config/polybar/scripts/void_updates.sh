#!/bin/bash

source "${HOME}/.cache/wal/colors.sh"
magenta=$color5

updates=$(xbps-install -Mun 2> /dev/null | wc -l)

if [ -n "$updates" ] && [ "$updates" -gt 0 ]; then
    echo " %{F$magenta}ꔀ%{F-} $updates"
else
    echo ""
fi
