zmodload -i zsh/complist
autoload -U colors
colors
zstyle ':completion:*' completer _expand _complete _ignored _match
zstyle ':completion:*' completions '_expand'
zstyle ':completion:*' expand prefix
zstyle ':completion:*' glob '_expand'
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|=*'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=2
zstyle ':completion:*' original false
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s%1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 'ex=32' 'di=34' '*.gz=31' '*.zip=31' '*.rar=31' '*.7z=31' '*.xz=31' '*.jpg=33' '*.jpeg=33' '*.png=33' '*.gif=33' '*.bmp=33'
zstyle ':completion:*:options' list-colors '=^(-- *)=33'
zstyle ':completion:*:*:kill:*' list-colors '=(#b) #([0-9]#)*( *[a-z])*=37=31=32'
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# New commands are entered in history file upon execution
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt NO_HIST_SAVE_BY_COPY
# No duplicates in history
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
#setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt NO_INC_APPEND_HISTORY_TIME

setopt auto_resume # attempt to resume existing job before creating a new process
setopt NO_AUTO_CD
setopt NO_REC_EXACT
setopt ALWAYS_LAST_PROMPT
setopt NO_BEEP
setopt COMPLETE_IN_WORD
setopt CHASE_LINKS
setopt GLOB_DOTS
setopt ALWAYS_TO_END
setopt GLOB_COMPLETE
# Set, when the completion is ambiguous you get a list without having to type ^D
setopt AUTO_LIST
setopt AUTO_MENU

# Expand aliases
setopt ALIASES
# Vim or Emax mode (-v -e)
bindkey -e
# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1
# Parameter expansion, command substitution and arithmetic expansion are performed in prompts. Substitutions within prompts do not affect the command status
setopt PROMPT_SUBST
setopt extendedglob
setopt IGNORE_EOF # Disables C-d

zstyle ':completion:*' rehash true

############ Keybindings ###########
bindkey '^[[Z' menu-complete
bindkey '^@' forward-char		#ctrl-Space
bindkey '\e' send-break
bindkey '^[[1;5D' backward-word		#ctrl-left
bindkey '^[[1;5C' forward-word		#ctr-right
bindkey '^[^[[D' backward-word		#alt-left
bindkey '^[^[[C' forward-word		#alt-right
bindkey '^[[7~' beginning-of-line	#Home
bindkey '^[[8~' end-of-line		#End
bindkey '^[[2~' overwrite-mode	#Insert
bindkey '^[[3~' delete-char		#Delete
bindkey '^[^[[3~' kill-word		#alt-Delete
bindkey '^[[1;H' backward-kill-word	#ctrl-BackSpace
bindkey '^[[3^' kill-word		#ctrl-Delete
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word
bindkey \^U backward-kill-line

############ Aliases ############
alias xq='xbps-query'
alias xi='doas xbps-install'
alias xr='doas xbps-remove'
alias e='exit'
alias c='clear'
alias ..='cd ..'
alias s='doas'
alias h='htop'
alias b='btop -t'
alias i='fastfetch'
alias v='pistol'
alias t='tmux new'
alias ta='tmux attach -t'
alias tls='tmux list-sessions'
alias vi='nvim'
alias zz='zellij -s'
alias ze='zellij edit'
alias za='zellij attach'
alias zr='zellij run'
alias zrf='zellij run -f'
alias zls='zellij list-sessions'
alias init='doas /sbin/init'
alias reboot='doas /sbin/reboot'
alias poweroff='doas /sbin/poweroff'
alias mm='unimatrix -s 91 -a -f -l m -c red'
# alias ls='ls -ah -I "." -I ".." --color=auto --group-directories-first'
alias ls='eza --smart-group --group-directories-first'
alias ll='eza -al --smart-group --group-directories-first'
alias ax='ouch decompress'
alias ac='ouch compress'
alias av='ouch list --tree'
alias al='ouch list --tree'
alias fd="fd -H --exclude={.git,.mozilla,.themes,.rustup,.cargo,.cache,vivaldi} --type f"
alias rg='rg -S'
alias f='yazi'
alias n='$EDITOR ~/notes'
alias q='$EDITOR ~/notes/quick.norg'
alias m='ncmpcpp'
alias '?'='duckduckgo'
alias rsync='rsync --info=flist2,progress2'
alias yt='ytfzf -e auto-thumb'
alias mocp='mocp -C ~/.config/moc/config'
alias dll='yt-dlp -f "bv*[height<=480]+ba/b[height<=480] / wv*+ba/w" -o "%(title)s.%(ext)s" --add-metadata'
alias dlq='yt-dlp -o "%(title)s.%(ext)s" --add-metadata'
alias dlm='yt-dlp -f "ba" -o "%(title)s.%(ext)s" --add-metadata'

alias wdwl='dbus-run-session dwl > /tmp/dwltags'
alias whypr='dbus-run-session Hyprland'
alias wsway='dbus-run-session sway'
alias wlabwc='dbus-run-session labwc'
alias wwayfire='dbus-run-session wayfire'

source ~/.bin/zsh/zsh-autosuggestions.zsh
source ~/.bin/zsh/fzf-completion.zsh
source ~/.bin/zsh/fzf-keys.zsh

# PS1=$' %B%F{blue}%~ %f%F{cyan}λ%f%b '
PS1=$' %B%F{blue}%~ %f%F{yellow}]%f%b '
# PS1=$'%F{green}%n%b %B%F{blue}%~%b%f%B%F{black}>%f%F{white}>%f%b '

PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

# Yazi
source ~/.bin/zsh/yazi.sh

# Zoxide
eval "$(zoxide init zsh)"
