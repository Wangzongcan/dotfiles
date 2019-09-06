#!/bin/bash

links="$HOME/.dotfiles/links"

function link_config() {
    for file in $1; do
        ln -fs $file "$HOME/.$(basename $file)"
    done
}

link_config "${links}/common/*"
[[ "$OSTYPE" =~ ^darwin ]] && link_config "${links}/macOS/*"
