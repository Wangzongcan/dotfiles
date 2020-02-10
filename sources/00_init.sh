#!/bin/bash
export LANG=zh_CN.UTF-8

add-path() {
    if [[ -z $TMUX ]]; then
        export PATH="$1:$PATH"
    fi
}
