#!/bin/bash

set -e

echo "Creating symbolic link now..."

CURRENT_DIR=$(pwd)

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -sf $CURRENT_DIR/$f ~/$f
    echo "Create symbolic link for '$f'"
done

echo "Finished creating symbolic link!"

exit 0
