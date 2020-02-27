#!/bin/bash

[[ "$(uname -s)" =~ ^Darwin ]] || return 1

add-path "/usr/local/sbin"

bash_completion_config="/usr/local/etc/profile.d/bash_completion.sh"
[[ -r $bash_completion_config ]] && source $bash_completion_config
unset bash_completion_config

alias ls="ls -G"
alias l="ls -hlG"
alias ll="ls -ahlG"
