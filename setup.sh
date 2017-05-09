#!/bin/bash

DOTFILES_DIR=$(pwd)

source "$DOTFILES_DIR/utils/functions.sh"
source "$DOTFILES_DIR/utils/variables.sh"

install_env() {
    rm -f $HOME/.bash_profile
    rm -f $HOME/.bashrc

    link_config_files "$DOTFILES_DIR/env"
}

install_homebrew() {
    if ! type brew >/dev/null 2>&1; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
}

install_git() {
    install git tig

    link_config_files "$DOTFILES_DIR/git"
}

install_tmux() {
    install tmux

    link_config_files "$DOTFILES_DIR/tmux"
}

install_rbenv() {
    install rbenv ruby-build

    bash-it enable plugin rbenv

    link_config_files "$DOTFILES_DIR/ruby"
}

install_nvm() {
    install nvm

    link_config_files "$DOTFILES_DIR/node"
}

setup() {
    install_env

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
