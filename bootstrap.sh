#!/bin/bash

DOTFILES="$HOME/.dotfiles"

link_config() {
    for file in $1/* $1/.[^.]*; do
        [[ -r $file ]] && ln -fs $file "$HOME/$(basename $file)"
    done
}

link_config "$DOTFILES/links/runcom"
link_config "$DOTFILES/links/git"
link_config "$DOTFILES/links/tmux"
link_config "$DOTFILES/links/ruby"

if [[ "$(uname -s)" =~ ^Darwin ]]; then
    link_config "$DOTFILES/links/hammerspoon"
if
