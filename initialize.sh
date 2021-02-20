#!/bin/bash

mkdir -p ~/tmp/{swp,backup,undo}
mkdir -p ~/.config/git/

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew install reattach-to-user-namespace

# Prezto
zsh -c "$(git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto")"

# vim-plug
zsh -c "$(curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
