# Consider exporting ZDOTDIR=$HOME/.config/zsh in /etc/zsh/zshenv

# Set up the prompt

autoload -Uz promptinit
promptinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
PROMPT="%F{cyan}┏━━%f%F{green}%B[%b%~%B]%b%f "\$vcs_info_msg_0_$'\n'"%F{cyan}┗━%f %F{blue}%B>%b%f "
zstyle ':vcs_info:git:*' formats '%F{240}(%b) %r%f'
zstyle ':vcs_info:*' enable git
#prompt adam1

setopt histignorealldups sharehistory

# vim bindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$XDG_STATE_HOME/zsh/.zsh_history"

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

# get aliases
. $ZDOTDIR/.zsh_aliases
