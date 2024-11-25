#!/bin/sh
eval "$(dbus-launch --sh-syntax --exit-with-session)"
userresources=$HOME/.Xresources

if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi

#        start - repeat
xset r rate 250 40 &
xset m 0 0 &
xset +fp ~/.local/share/fonts
xset fp rehash
numlockx &
# setxkbmap -option caps:escape
setxkbmap -option caps:backspace
setxkbmap -model pc104 -layout us,bg -variant basic,phonetic
setxkbmap -option grp:shifts_toggle

# xrandr --output DisplayPort-0 --set "scaling mode" "Center"
xrandr --output DisplayPort-0 --set "scaling mode" "Full aspect"
# xrandr -s 1920x1080
xrandr -r 165
# xrandr --dpi 115

exec openbox-session
# exec herbstluftwm
# exec bspwm
# exec awesome
