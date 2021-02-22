autoload -U compinit
compinit

setopt prompt_subst
setopt RM_STAR_SILENT

# Tab
function precmd() {
  local wname=`pwd | sed -e "s|$HOME|~|"`
  local tname=`pwd | sed -e 's|^.*/||'`
  echo -ne "\033]2;$wname\007" # window title
  echo -ne "\033]1;$tname\007" # tab title
}

# Prompt
PROMPT='
%(?.%B%F{green}.%B%F{blue})%(?!(๑˃̵ᴗ˂̵)ﻭ < !(;^ω^%) < )%f%b'

# Alias
alias soz="source ~/.zshrc"
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"
alias rm="rm -i"
alias cp="cp -i"
alias py="python3"
alias sleepon="caffeinate -i"

alias a=""
alias c="clear"
alias b="cd .."
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
alias n=""
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

eval "$(pyenv init -)"

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
export PATH="/usr/local/opt/openssl/bin:$PATH"
