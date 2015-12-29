source ~/.dotfiles/prompts.sh

export TERM=xterm-256color
export EDITOR=/Applications/Emacs.app/Contents/MacOS/Emacs
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# alias
alias l="ls -lh"
alias ll="ls -lha"
alias :q="exit"

# Vim
alias vi=vim

# Chruby
source $(brew --prefix chruby)/share/chruby/chruby.sh
source $(brew --prefix chruby)/share/chruby/auto.sh
chruby 2.2.3

Cyan="\[\033[0;36m\]"
Purple="\[\033[0;35m\]"
ResetColor="\[\033[0m\]"        # Text Reset

# PS1=" ${Purple}\W ${Cyan}» ${ResetColor}"
