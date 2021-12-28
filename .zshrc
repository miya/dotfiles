export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export DOTFILES=$HOME/dotfiles
export STARSHIP_CONFIG=$DOTFILES/starship/starship.toml

source $DOTFILES/.zshrc.alias

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

eval "$(starship init zsh)"

