#!/bin/bash

DOTFILES_DIR=$(pwd)

source "$DOTFILES_DIR/utils/functions.sh"
source "$DOTFILES_DIR/utils/variables.sh"

install_env() {
    link_config_files "$DOTFILES_DIR/env"
}

install_bash_it() {
    if [[ ! -d "$HOME/.bash_it" ]]; then
        git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

        ~/.bash_it/install.sh
    fi

    reload
}

install_git() {
    install git tig

    link_config_files "$DOTFILES_DIR/git"

    bash_it_enable git
}

install_tmux() {
    install tmux

    link_config_files "$DOTFILES_DIR/tmux"

    bash_it_enable tmux
}

install_rbenv() {
    if ! type rbenv > /dev/null 2>&1; then
        git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
        git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
        git clone git://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
        git clone git://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update

        bash-it enable plugin rbenv

        reload

        gem update --system
    fi

    link_config_files "$DOTFILES_DIR/ruby"
}

install_nvm() {
    if ! type nvm > /dev/null 2>&1; then
        git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

        bash-it enable plugin nvm

        reload

        npm i -g eslint
        npm i -g tern
    fi

    link_config_files "$DOTFILES_DIR/node"
}

setup() {
    if $IS_MACOS; then
        echo $1
    elif $IS_LINUX; then
        sudo apt update
    fi

    install_env
    install_bash_it
    install_git
    install_tmux
    install_rbenv
    install_nvm
}

setup
