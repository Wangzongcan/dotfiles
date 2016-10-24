#!/bin/bash

reload() {
    source $HOME/.bash_profile
}

install() {
    if $IS_MACOS; then
        brew install $@
    elif $IS_LINUX; then
        sudo apt install $@
    fi
}

link_config_files() {
    for CONFIG_FILE in $(find $1 -type f); do
        local FILENAME=$(basename $CONFIG_FILE)
        ln -fs "$CONFIG_FILE" "$HOME/.$FILENAME"
    done
}
