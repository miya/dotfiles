#!/bin/sh

#                      __             ___    ___
#  __                 /\ \__         /\_ \  /\_ \
# /\_\    ___     ____\ \ ,_\    __  \//\ \ \//\ \
# \/\ \ /' _ `\  /',__\\ \ \/  /'__`\  \ \ \  \ \ \
#  \ \ \/\ \/\ \/\__, `\\ \ \_/\ \L\.\_ \_\ \_ \_\ \_
#   \ \_\ \_\ \_\/\____/ \ \__\ \__/.\_\/\____\/\____\
#    \/_/\/_/\/_/\/___/   \/__/\/__/\/_/\/____/\/____/

set -eu

DOTFILES="${HOME}/dotfiles"


# install brew
if [ ! -f /usr/local/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install git
if [ ! -f /usr/bin/git ]; then
  brew install git
fi

# clone dotfiles
if [ ! -d ~/dotfiles ]; then
  git clone https://github.com/miya/dotfiles
fi

# create symlink
ln -sfv ${DOTFILES}/.zshrc ${HOME}/.zshrc
ln -sfv ${DOTFILES}/.vimrc ${HOME}/.vimrc
ln -sfv ${DOTFILES}/.gitconfig ${HOME}/.gitconfig

# install brew bundle
which brew >/dev/null 2>&1 && brew doctor
brew update
brew upgrade
brew bundle --file ${DOTFILES}/Brewfile
brew cleanup
