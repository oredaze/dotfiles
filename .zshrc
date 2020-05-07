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
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
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
# Don't execute directly
setopt HIST_VERIFY
setopt NO_INC_APPEND_HISTORY_TIME

setopt ALWAYS_LAST_PROMPT
setopt NO_BEEP
setopt COMPLETE_IN_WORD
setopt CHASE_LINKS
setopt GLOB_DOTS
# Always moves cursor to end after completion
setopt ALWAYS_TO_END
# Set, when the completion is ambiguous you get a list without having to type ^D
setopt AUTO_LIST
# If on - the string on the command line exactly matches one of the possible completions, it is accepted, even if there is another completion (i.e. that string with something else added)
setopt NO_REC_EXACT
# If on - one completion is always inserted completely, then when you hit TAB it changes to the next, and so on until you get back to where you started
setopt NO_MENU_COMPLETE
# This is modified so that nothing is listed if there is an unambiguous prefix or suffix to be inserted
#setopt LIST_AMBIGUOUS
# If on - only get the menu behaviour when you hit TAB again on the ambiguous completion
setopt AUTO_MENU

# Expand aliases
setopt ALIASES
# Vim or Emax mode (-v -e)
bindkey -e
# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1
# Parameter expansion, command substitution and arithmetic expansion are performed in prompts. Substitutions within prompts do not affect the command status
setopt PROMPT_SUBST

zstyle ':completion:*' rehash true

############ Keybindings urxvt ###########
bindkey '^[[Z' menu-complete
bindkey '^@' forward-char		#ctrl-Space
bindkey '\e' send-break
bindkey '^[[1;5D' backward-word		#ctrl-left
bindkey '^[[1;5C' forward-word		#ctr-right
bindkey '^[^[[D' backward-word		#alt-left
bindkey '^[^[[C' forward-word		#alt-right
bindkey '^[[7~' beginning-of-line	#Home
bindkey '^[[8~' end-of-line		#End
bindkey '^[[2~'   overwrite-mode	#Insert
bindkey '^[[3~' delete-char		#Delete
bindkey '^[^[[3~' kill-word		#alt-Delete
bindkey '^[[1;H' backward-kill-word	#ctrl-BackSpace
bindkey '^[[3^' kill-word		#ctrl-Delete
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word
bindkey '^f' history-incremental-search-backward
bindkey -r '^[^L'
bindkey -r '^L'

############ Aliases ############
alias ls='ls -lhG --color=auto --group-directories-first --ignore=.. --ignore=.'
alias p='sudo pacman'
alias xq='xbps-query'
alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias ..='cd ..'
alias c='clear'
alias e='exit'
alias r='ranger'
alias m='pulsemixer'
alias n='ncmpcpp'
alias init='sudo init'
alias l='lock'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias mm='unimatrix -s 94 -a -l gGknS -f'
alias hc='herbstclient'
alias mutt='neomutt'

#PS1=$'%B%F{green}%n%b%f in %B%F{blue}%~%b%f >%F{red}>%B>%b%f '
PS1=$'%B%F{blue}%~%b%f >%F{red}>%B>%b%f '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Prevent nested ranger instances
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

# Vanilla
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Debian
#source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
