#!/bin/bash

export EDITOR="emacsclient -t"

alias e='emacsclient -t'
alias en='emacsclient -n'
alias ec='emacsclient -c'
alias kemacs='emacsclient -e "(kill-emacs)"'
alias demacs='/usr/local/bin/emacs --daemon'
alias remacs='kemacs & demacs'
