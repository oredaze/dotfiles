#!/bin/bash

source "${HOME}/.cache/wal/colors.sh"
bg=$background
fg=$foreground
blue=$color4
border=#0A0A0A

ARR=()
ARR+=("Anime")
ARR+=("Metal A")
ARR+=("Metal B")
ARR+=("Post Rock")
ARR+=("Psychill")

CHOICE=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu \
	-i -theme-str '#inputbar { enabled: false; }' \
	-location 1 -yoffset 948 -xoffset 620 -lines 7 -width 140 \
	-color-window "$bg, $border, $fg" \
	-color-normal "$bg, $fg, $bg, $blue, $bg" \
	-separator-style none\
)

if [ "$CHOICE" = "Anime" ]; then
	mpc clear; mpc load anime; mpc play
	exit 0
fi

if [ "$CHOICE" = "Metal A" ]; then
	mpc clear; mpc load metal_a; mpc play
	exit 0
fi

if [ "$CHOICE" = "Metal B" ]; then
	mpc clear; mpc load metal_b; mpc play
	exit 0
fi

if [ "$CHOICE" = "Post Rock" ]; then
	mpc clear; mpc load postrock; mpc play
	exit 0
fi

if [ "$CHOICE" = "Psychill" ]; then
	mpc clear; mpc load psychill; mpc play
	exit 0
fi
