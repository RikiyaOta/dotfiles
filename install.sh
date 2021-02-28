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
ln -sf $CURRENT_DIR/.config/git/ignore ~/.config/git/ignore

echo "Finished creating symbolic link!"

exit 0
