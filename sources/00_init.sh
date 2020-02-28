#!/bin/bash

alias l="ls -hl"
alias ll="ls -ahl"

add-path() {
    if [[ -z $TMUX ]]; then
        export PATH="$1:$PATH"
    fi
}
