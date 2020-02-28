#!/bin/bash

[[ "$(uname -s)" == "Linux" ]] || return 1

alias ls="ls --color=auto"
alias l="ls -hl --color=auto"
alias ll="ls -ahl --color=auto"
