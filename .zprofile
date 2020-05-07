export PATH="$HOME/.bin:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export XAUTHORITY="$HOME/.cache/.Xauthority"
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache/nvidia"
export GNUPGHOME="$HOME/.cache/gnupg"
export WEECHAT_HOME="$HOME/.config/weechat"
export XDG_SESSION_TYPE=X11
export BROWSER="firefox"

# Works under arch; doesn't under void?
#export MANPAGER="/bin/zsh -c \"col -b | vim -u ~/.config/vimpagerrc -\""

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# start X on login (systemd)
#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx
#fi

# start X on login
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#	startx
#fi
