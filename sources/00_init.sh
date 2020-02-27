#!/bin/bash
export LANG=zh_CN.UTF-8

alias l="ls -hl"
alias ll="ls -ahl"

add-path() {
    if [[ -z $TMUX ]]; then
        export PATH="$1:$PATH"
    fi
}
