#!/bin/bash

DOTFILES_DIR=$(pwd)

function link_dotfiles() {
    local CURRENT_DIR=$1
    local LINKS_DIR="$CURRENT_DIR/links"

    if [ -d $LINKS_DIR ]; then
        for FILE_PATH in `find $LINKS_DIR -maxdepth 1 -mindepth 1`; do
            ln -fs $FILE_PATH "$HOME/.$(basename $FILE_PATH)"
        done
    fi
}

for dir in */; do
    link_dotfiles "$(realpath $dir)"
done
