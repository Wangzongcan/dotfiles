## 当登录时以及每次打开新的 shell 时，该文件被读取

[ -s "$HOME/.dotfiles/colors.bash" ] && source "$HOME/.dotfiles/colors.bash"

PS1=" ${bldpur}\W"
PS1+=" ${bldcyn}» ${txtrst}"

# alias
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'

alias l='ls -la'

alias :q='exit'

## rails
alias be='bundle exec'
alias ber='bundle exec rake'

#cask
if [ -d "$HOME/.cask" ]; then
    export PATH="$HOME/.cask/bin:$PATH"
fi

# nvm
if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR="/home/john/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm
fi

# rvm
if [ -d "$HOME/.rvm" ]; then
    # Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    # Add RVM to PATH for scripting
    export PATH="$PATH:$HOME/.rvm/bin"
fi
