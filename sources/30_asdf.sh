#!/bin/bash

asdf_path="$HOME/.asdf"

if [[ -d $asdf_path ]]; then
    source "$asdf_path/asdf.sh"
    source "$asdf_path/completions/asdf.bash"
fi
unset asdf_path
