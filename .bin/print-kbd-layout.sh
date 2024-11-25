#!/bin/bash
layout_get () (
	# setxkbmap -print | awk -F'+' '/xkb_symbols/ {print $2}'
	xset -q | grep LED | awk '{ print $10 }'
)
if [[ "$(layout_get)" == "0000000"* ]]; then
	echo "Us"
elif [[ "$(layout_get)" == "0000100"* ]]; then
	echo "Bg"
fi
