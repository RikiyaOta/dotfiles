#!/bin/bash

set -e

echo "Creating symbolic link now..."

CURRENT_DIR=$(pwd)

for f in .??*
do
    [[ "$f" == ".config" ]] && continue
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -sf $CURRENT_DIR/$f ~/$f
done

mkdir -p ~/.config/git/
ln -sf $CURRENT_DIR/.config/git/ignore ~/.config/git/ignore

echo "Finished creating symbolic link!"

exit 0
