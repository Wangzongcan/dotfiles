#!/bin/bash

reload() {
    source $HOME/.bashrc
}

install() {
    if type $1 > /dev/null 2>&1; then
        return
    fi

    if $IS_MACOS; then
        echo $1
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


bash_it_enable() {
    bash-it enable alias $1
    bash-it enable completion $1
    bash-it enable plugin $1
}
