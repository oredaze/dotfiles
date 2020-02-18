#!/bin/sh

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "%{F#B82A2A}⚈%{F-} $updates"
else
    echo ""
fi
