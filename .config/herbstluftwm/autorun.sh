#!/usr/bin/env bash

function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}
#nitrogen --restore
~/.fehbg
picom -b
~/.bin/polybar_start.sh
#pidgin &
