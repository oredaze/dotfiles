#!/bin/bash

source "${HOME}/.cache/wal/colors.sh"
bg=$background
fg=$foreground
blue=$color4
border=#0A0A0A

ARR[0]=" Terminal"
ARR[1]=" Gvim"
ARR[2]=" Ranger"
ARR[3]=" DoubleCMD"
ARR[4]=" Firefox"
ARR[5]="⇩ Tixati"
ARR[6]="♮ Ncmpcpp"
ARR[7]=" Pulsemixer"
ARR[8]="ꔄ Mcomix"
ARR[9]="ꔂ Steam"
ARR[10]="ꔃ Gcolor2"
ARR[11]="⦀ Htop"
ARR[12]=" IOtop"

CHOICE=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu \
	-i -theme-str '#inputbar { enabled: false; }' \
	-location 1 -yoffset 850 -xoffset 0 -lines 14 -width 140 \
	-color-window "$bg, $border, $fg" \
	-color-normal "$bg, $fg, $bg, $blue, $bg" \
	-separator-style none\
)

if [ "$CHOICE" = "${ARR[0]}" ]; then
	urxvt
	exit 0
fi

if [ "$CHOICE" = "${ARR[1]}" ]; then
	gvim
	exit 0
fi

if [ "$CHOICE" = "${ARR[2]}" ]; then
	urxvt -e ranger
	exit 0
fi

if [ "$CHOICE" = "${ARR[3]}" ]; then
	doublecmd
	exit 0
fi

if [ "$CHOICE" = "${ARR[4]}" ]; then
	firefox
	exit 0
fi

if [ "$CHOICE" = "${ARR[5]}" ]; then
	tixati
	exit 0
fi

if [ "$CHOICE" = "${ARR[6]}" ]; then
	urxvt -e ncmpcpp
	exit 0
fi

if [ "$CHOICE" = "${ARR[7]}" ]; then
	urxvt -e pulsemixer
	exit 0
fi

if [ "$CHOICE" = "${ARR[8]}" ]; then
	mcomix
	exit 0
fi

if [ "$CHOICE" = "${ARR[9]}" ]; then
	steam
	exit 0
fi

if [ "$CHOICE" = "${ARR[10]}" ]; then
	gcolor2
	exit 0
fi

if [ "$CHOICE" = "${ARR[11]}" ]; then
	urxvt -e htop
	exit 0
fi

if [ "$CHOICE" = "${ARR[12]}" ]; then
	urxvt -e iotop
	exit 0
fi
