[ -s "$HOME/.dotfiles/colors.bash" ] && source "$HOME/.dotfiles/colors.bash"

PS1=" ${bldpur}\W"
PS1+=" ${bldcyn}» ${txtrst}"

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

# emacs
alias emacs="$(brew --prefix emacs)/Emacs.app/Contents/MacOS/Emacs"

# rvm
if [ -d "$HOME/.rvm" ]; then
    # Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    # Add RVM to PATH for scripting
    export PATH="$PATH:$HOME/.rvm/bin"
fi
