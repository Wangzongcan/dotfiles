#!/bin/bash

bash_git_prompt_path="$DOTFILES/vendor/bash-git-prompt"

if [[ -f "$bash_git_prompt_path/gitprompt.sh" ]]; then
    source "$bash_git_prompt_path/gitprompt.sh"
fi

unset bash_git_prompt_path
