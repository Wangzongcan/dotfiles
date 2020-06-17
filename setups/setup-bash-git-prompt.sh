#!/bin/bash

bash_git_prompt_path="$HOME/.bash-git-prompt"

if [[ ! -d $bash-git-prompt ]]; then
    git clone --depth 1 https://github.com/magicmonty/bash-git-prompt $bash_git_prompt_path
fi

unset bash_git_prompt_path
