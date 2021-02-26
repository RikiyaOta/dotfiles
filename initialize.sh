#!/bin/bash

mkdir -p ~/tmp/{swp,backup,undo}
mkdir -p ~/.config/git/

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/usr/local/bin/brew update

# git
brew install git

# coreutils
brew install coreutils

# For tmux
/usr/local/bin/brew install reattach-to-user-namespace

# Prezto
/bin/zsh -c "$(git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto")"

# vim-plug
/bin/zsh -c "$(curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"

# Ricty
/usr/local/bin/brew tap sanemat/font && \
  /usr/local/bin/brew install ricty && \
  cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/ && \
  fc-cache -vf

# asdf-vm
brew install asdf

brew install fd

brew install ripgrep
