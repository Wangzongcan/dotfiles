#!/bin/bash

DOTFILES_DIR=$(pwd)

function link_dotfiles() {
    local CURRENT_DIR=$1

    for FILE_PATH in `find $CURRENT_DIR/links -maxdepth 1 -mindepth 1`; do
        ln -fs $FILE_PATH "$HOME/.$(basename $FILE_PATH)"
    done
}

for dir in */; do
    SOURCE_FILE="$DOTFILES_DIR/"$(basename $dir)"/index.sh"
    [ -f $SOURCE_FILE ] && source $SOURCE_FILE
done
