export TERM=xterm-256color
export EDITOR="$(brew --prefix emacs)/bin/emacsclient -ct"
export VISUAL="emacsclient -c -a emacs"

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# alias
alias l="ls -lh --color=auto"
alias ls="ls --color=auto"
alias ll="ls -lha --color=auto"
alias :q="exit"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Git
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM='verbose'
export GIT_PS1_DESCRIBE_STYLE="branch"

# Coreutils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Postgresql
export PGDATA="/usr/local/var/postgres"
export PGLOG="/usr/local/var/log/postgres/server.log"

alias pg.start="pg_ctl start -l $PGLOG"
alias pg.stop="pg_ctl stop -s -m fast"

# NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Emacs
alias es="$(brew --prefix emacs)/bin/emacs --daemon"
alias e="$(brew --prefix emacs)/bin/emacsclient -ct"
alias emacs="$(brew --prefix emacs)/bin/emacsclient -ct"

# Vim
alias vi=vim

# Chruby
source $(brew --prefix chruby)/share/chruby/chruby.sh
source $(brew --prefix chruby)/share/chruby/auto.sh
chruby 2.2.2

# PS1
source "$HOME/.bash/color.sh"
# PS1=" ${BPurple}\W\e[m\$(__git_ps1) ${BCyan}» ${Color_Off}"
PROMPT_COMMAND='__git_ps1 "'$Purple' \W'$Color_Off'" "'$Cyan' ➜  '$Color_Off'"'
