export TERM=xterm-256color
export EDITOR="$(brew --prefix emacs-mac)/bin/emacsclient -ct"
export VISUAL="emacsclient -c -a emacs"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# alias
alias l="ls -lh"
alias ll="ls -lha"
alias :q="exit"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Postgresql
export PGDATA="/usr/local/var/postgres"
export PGLOG="/usr/local/var/log/postgres/server.log"

alias pg.start="pg_ctl start -l $PGLOG"
alias pg.stop="pg_ctl stop -s -m fast"

# Emacs
alias es="$(brew --prefix emacs-mac)/bin/emacs --daemon"
alias e="$(brew --prefix emacs-mac)/bin/emacsclient -ct"
alias emacs="$(brew --prefix emacs-mac)/bin/emacsclient -ct"

# Vim
alias vi=vim

# Chruby
source $(brew --prefix chruby)/share/chruby/chruby.sh
source $(brew --prefix chruby)/share/chruby/auto.sh
chruby 2.2.3

Cyan="\[\033[0;36m\]"
Purple="\[\033[0;35m\]"
ResetColor="\[\033[0m\]"        # Text Reset

PS1=" ${Purple}\W ${Cyan}» ${ResetColor}"
