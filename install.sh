#!/bin/bash

set -e

echo "Creating symbolic link now..."

CURRENT_DIR=$(pwd)

# For dot files in root dir.
for f in .??*
do
    [[ "$f" == ".config" ]] && continue
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$CURRENT_DIR/$f"
    echo "~/$f"
    ln -sf $CURRENT_DIR/$f ~/$f
done

# For universal ctags
mkdir -p ~/.ctags.d/
for f in $(ls '.ctags.d' | grep ".ctags")
do
  echo $f
  ln -sf $CURRENT_DIR/.ctags.d/$f ~/.ctags.d/$f
done

# For git
mkdir -p ~/.config/git/
ln -sf "${CURRENT_DIR}/.config/git/ignore" ~/.config/git/ignore

# For tmux
mkdir -p ~/.config/tmux/
ln -sf "${CURRENT_DIR}/.config/tmux/tmux.conf" ~/.config/tmux/tmux.conf

# For neovim (powered by AstroNvim)
ln -sf "${CURRENT_DIR}/.config/nvim" ~/.config/nvim

# For alacritty
mkdir -p ~/.config/alacritty/
ln -sf "${CURRENT_DIR}/.config/alacritty/alacritty.yml" ~/.config/alacritty/alacritty.yml

echo "Finished creating symbolic link!"

exit 0
