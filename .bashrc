PS1=" \[\e[1;35m\]\W \[\e[1;36m\]» \[\e[0m\]"

# export
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

export TERM=xterm-256color

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# alias
alias l="ls -lh"
alias ll="ls -lha"
alias :q="exit"
alias be="bundle exec"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# cask
export PATH="$HOME/.cask/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# emacs
alias emacs="$(brew --prefix emacs)/Emacs.app/Contents/MacOS/Emacs"
alias daemon="$(brew --prefix emacs)/Emacs.app/Contents/MacOS/Emacs --daemon"
alias ec="emacsclient -c -a ''"
alias ef="emacsclient -c -a '' -F '((fullscreen . maximized))'"
alias e="emacsclient -t"

# rvm
if [ -d "$HOME/.rvm" ]; then
    # Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    # Add RVM to PATH for scripting
    export PATH="$PATH:$HOME/.rvm/bin"
fi
