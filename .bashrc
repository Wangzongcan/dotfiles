[ -s "$HOME/.dotfiles/colors.bash" ] && source "$HOME/.dotfiles/colors.bash"

PS1=" ${bldpur}\W"
PS1+=" ${bldcyn}» ${txtrst}"

# export
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

export TERM=xterm-256color

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# alias
alias l="ls -lha"
alias :q="exit"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# rvm
if [ -d "$HOME/.rvm" ]; then
    # Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    # Add RVM to PATH for scripting
    export PATH="$PATH:$HOME/.rvm/bin"
fi
