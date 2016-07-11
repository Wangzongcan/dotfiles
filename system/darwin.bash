if [ $(type -P brew) ] ; then
    # env
    export CLICOLOR=1
    export LSCOLORS=gxfxcxdxbxegedabagacad

    # alias
    alias demacs='$(brew --prefix emacs)/bin/emacs --daemon'
    alias remacs='kemacs & demacs'

    # bash-completion
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        source $(brew --prefix)/etc/bash_completion
    fi
fi
