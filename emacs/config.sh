#!/bin/bash

alias e='emacsclient -t'
alias en='emacsclient -n'
alias ec='emacsclient -c'
alias kemacs='emacsclient -e "(kill-emacs)"'
alias demacs='$(brew --prefix emacs)/bin/emacs --daemon'
alias remacs='kemacs & demacs'