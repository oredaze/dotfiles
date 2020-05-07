#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

source "${HOME}/.cache/wal/colors.sh"
background=$background
foreground=$foreground
grey=$color8
red=$color1
green=$color2
yellow=$color3
blue=$color4
magenta=$color5
cyan=$color6

# Launch Polybar
polybar mainbar -c $HOME/.config/polybar/config &
