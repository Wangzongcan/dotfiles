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

# Coreutils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Postgresql
export PGDATA="/usr/local/var/postgres"
export PGLOG="/usr/local/var/log/postgres/server.log"

alias pg.start="pg_ctl start -l $PGLOG"
alias pg.stop="pg_ctl stop -s -m fast"

# Emacs
alias es="$(brew --prefix emacs)/bin/emacs --daemon"
alias e="$(brew --prefix emacs)/bin/emacsclient -ct"
alias emacs="$(brew --prefix emacs)/bin/emacsclient -ct"

# Vim
alias vi=vim

# Chruby
source $(brew --prefix chruby)/share/chruby/chruby.sh
source $(brew --prefix chruby)/share/chruby/auto.sh
chruby 2.2.3

Cyan="\[\033[0;36m\]"
Purple="\[\033[1;35m\]"
ResetColor="\[\033[0m\]"        # Text Reset

PS1=" ${Purple}\W ${Cyan}» ${ResetColor}"
