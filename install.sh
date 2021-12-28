#!/bin/sh

set -eu

DOTFILES="${HOME}/dotfiles"


# install brew
if [ ! -f /usr/local/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install git
if [ ! -f /usr/bin/git ]; then
  brew install git

# clone dotfiles
if [ ! -d ~/dotfiles ]; then
  git clone https://github.com/miya/dotfiles
fi

# create symlink
ln -sfv ${DOTFILES}/.zshrc ${HOME}/.zshrc
ln -sfv ${DOTFILES}/.vimrc ${HOME}/.vimrc
ln -sfv ${DOTFILES}/.gitconfig ${HOME}/.gitconfig

# TODO mac os settings

# install brew bundle
which brew >/dev/null 2>&1 && brew doctor
brew update
brew upgrade
brew bundle --file ${DOTFILES}/Brewfile
brew cleanup

