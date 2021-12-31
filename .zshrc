export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export DOTFILES=$HOME/dotfiles
export STARSHIP_CONFIG=$DOTFILES/starship/starship.toml

# general
autoload -Uz colors && colors
autoload -Uz compinit && compinit

# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000
setopt share_history
setopt histignorealldups
setopt hist_ignore_all_dups
setopt inc_append_history

# alias
alias so="source ~/.zshrc"
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"
alias rm="rm -i"
alias cp="cp -i"

alias a=""
alias b="cd .."
alias c="clear"
alias d=""
alias e="vi"
alias f=""
alias g="git"
alias h="history"
alias i=""
alias j=""
alias k=""
alias l=""
alias m="mkdir"
alias n="n"
alias o="open"
alias p="pwd"
alias q="exit"
alias r=""
alias s=""
alias t="tmux"
alias u=""
alias v=""
alias w=""
alias x=""
alias y=""
alias z=""

eval "$(starship init zsh)"
