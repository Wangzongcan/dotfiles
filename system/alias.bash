# system
alias l="ls -lh"
alias ll="ls -lha"
alias :q="exit"

# emacs
alias e='emacsclient -t'
alias ec='emacsclient -c'
alias kemacs='emacsclient -e "(kill-emacs)"'
alias demacs='$(brew --prefix emacs)/bin/emacs --daemon'
alias remacs='kemacs & demacs'

# vim
alias vi=vim

# ruby
alias b="bundle"
alias be="bundle exec"
