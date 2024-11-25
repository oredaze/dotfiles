if test -z "$XDG_RUNTIME_DIR"; then
	RUNDIR="/tmp/$(id -u)-runtime-dir"
	if test ! -d "$RUNDIR"; then
		mkdir -m 0700 $RUNDIR
	fi
	export XDG_RUNTIME_DIR=$RUNDIR
fi

export PATH="$HOME/.bin:/opt/bin:$HOME/.cargo/bin:$HOME/.rustup:$HOME/.bin/games:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/etc/eselect/wine/bin:$HOME/.local/share/yabridge"
export XAUTHORITY="$HOME/.cache/.Xauthority"
export XDG_CONFIG_HOME="$HOME/.config"
export GNUPGHOME="$HOME/.cache/gnupg"
export WEECHAT_HOME="$HOME/.config/weechat"
export LESSHISTFILE="-"
export CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse
export POWERDEVIL_NO_DDCUTIL=1
export QT_QPA_PLATFORMTHEME=qt5ct

# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# export QT_QPA_PLATFORM=wayland
# export QT_QPA_BACKEND=xcb
# export GTK_THEME=Vertex-Dark-Red:dark
# export SWWW_TRANSITION="fade"
# export SWWW_TRANSITION_DURATION=2
# export SWWW_TRANSITION_FPS=165
# export XDG_SESION_TYPE=wayland
# export SDL_VIDEODRIVER=wayland
# export WINE_VK_WAYLAND=1
# # export WLR_NO_HARDWARE_CURSORS=1
# # # for tearing; may be unnecessary with kernel >6.8
# export WLR_DRM_NO_ATOMIC=1

export XDG_SESSION_DESKTOP=GNOME
export XDG_SESSION_CLASS=user
export XDG_SESSION_TYPE=x11

export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="firefox"

export LS_COLORS="di=01;34:ex=00;32:ln=01;36:*.pdf=00;38:*.mp3=00;36:*.wav=00;36:*.ogg=00;36:*.flac=00;36:*.png=00;35:*.jpg=00;35:*.gif=00;35"
export EZA_COLORS="sn=36:da=35:hd=31:di=34;1:ln=36;1:ex=32:uu=33:gu=33:*.pdf=38;5;nnn:*.mp3=36:*.wav=36:*.ogg=36:*.flac=36:*.png=35:*.jpg=35:*.gif=35:*.mkv=35:*.avi=35"
export LESS="-iMFXRj7#1 --mouse --use-color --wheel-lines=4"

export FZF_DEFAULT_OPTS="-m --no-height --border=horizontal --preview-window=top --preview-window border-bottom --prompt ': ' --marker '*' --no-unicode --info=hidden --preview='pistol {}' --color 16,hl:1,hl+:1,prompt:2,info:8,border:8,header:8,marker:3,spinner:2,gutter:0 --bind 'ctrl-e:become(nvim {} < /dev/tty > /dev/tty),ctrl-l:become(lf {}),ctrl-p:change-preview-window(hidden|50%)'"
export FZF_DEFAULT_COMMAND="fd -H --exclude={.git,.mozilla,.themes,.rustup,.cargo,.cache,.wine,.wine32,.steam,.dos,vivaldi} --type f"

# export MOZC_CONFIGURATION_DIRECTORY="$HOME/.config/mozc"
# export XMODIFIERS="@im=ibus"
# export GTK_IM_MODULE="ibus"
# export QT_IM_MODULE="ibus"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
fi

# if [ -z "${WAYLAND_DISPLAY}" ]; then
# 	dbus-run-session labwc
# fi
