#!/bin/bash

export DOTFILES="$HOME/.dotfiles"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR="vim"

alias ll="ls -lah"

add-path() {
    if [[ -z $TMUX ]]; then
       export PATH="$1:$PATH"
    fi
}
