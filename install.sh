#!/bin/bash

DOTFILES_DIR=$(pwd)

source "$DOTFILES_DIR/utils/functions.sh"
source "$DOTFILES_DIR/utils/variables.sh"

install_env() {
    rm -f $HOME/.bash_profile
    rm -f $HOME/.bashrc

    link_config_files "$DOTFILES_DIR/env"
}

install_bash_it() {
    if [[ ! -d "$HOME/.bash_it" ]]; then
        git clone --depth=1 https://github.com/Bash-it/bash-it.git $HOME/.bash_it

        $HOME/.bash_it/install.sh

        bash-it update
    fi

    source $HOME/.bash_it/bash_it.sh
}

install_homebrew() {
    if ! type brew >/dev/null 2>&1; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    bash-it enable completion brew
}

install_git() {
    install git tig

    bash-it enable alias git
    bash-it enable completion git
    bash-it enable plugin git

    link_config_files "$DOTFILES_DIR/git"
}

install_tmux() {
    install tmux

    bash-it enable alias tmux
    bash-it enable completion tmux
    bash-it enable plugin tmux

    link_config_files "$DOTFILES_DIR/tmux"
}

install_rbenv() {
    if ! type rbenv > /dev/null 2>&1; then
        git clone git://github.com/rbenv/rbenv.git $HOME/.rbenv
        git clone git://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
        git clone git://github.com/sstephenson/rbenv-gem-rehash.git $HOME/.rbenv/plugins/rbenv-gem-rehash
        git clone git://github.com/rkh/rbenv-update.git $HOME/.rbenv/plugins/rbenv-update
    fi

    bash-it enable plugin rbenv

    link_config_files "$DOTFILES_DIR/ruby"
}

install_nvm() {
    if ! type nvm > /dev/null 2>&1; then
        git clone https://github.com/creationix/nvm.git $HOME/.nvm && cd $HOME/.nvm && git checkout `git describe --abbrev=0 --tags`

        npm i -g eslint
        npm i -g tern
    fi

    bash-it enable completion nvm
    bash-it enable plugin nvm

    link_config_files "$DOTFILES_DIR/node"
}

setup() {
    install_env
    install_bash_it

    if $IS_MACOS; then
        install_homebrew
    elif $IS_LINUX; then
        sudo apt-get update

        # ruby
        sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
    fi

    install_git
    install_tmux
    install_rbenv
    install_nvm
}

setup
