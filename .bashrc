# export
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

export TERM=xterm-256color
export EDITOR="$(brew --prefix emacs-mac)/bin/emacsclient -ct"
export VISUAL="emacsclient -c -a emacs"

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

# Git
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose'
export GIT_PS1_DESCRIBE_STYLE="branch"

# Postgresql
export PGDATA="/usr/local/var/postgres"
export PGLOG="/usr/local/var/log/postgres/server.log"

alias pg.start="pg_ctl start -l $PGLOG"
alias pg.stop="pg_ctl stop -s -m fast"

# Cask
export PATH="$HOME/.cask/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Emacs
alias e="$(brew --prefix emacs-mac)/bin/emacsclient -ct"

# Chruby
source $(brew --prefix chruby)/share/chruby/chruby.sh
source $(brew --prefix chruby)/share/chruby/auto.sh

# PS1
source "$HOME/.bash/color.sh"
# PS1=" ${BPurple}\W\e[m\$(__git_ps1) ${BCyan}» ${Color_Off}"
PROMPT_COMMAND='__git_ps1 "'$BPurple' \W'$Color_Off'" "'$BCyan' » '$Color_Off'"'
