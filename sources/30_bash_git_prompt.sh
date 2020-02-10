#!/bin/bash

bash_git_prompt="$HOME/.bash-git-prompt/"
if [[ -d $bash_git_prompt ]]; then
    source "$bash_git_prompt/gitprompt.sh"
    source "$bash_git_prompt/prompt-colors.sh"
fi
unset bash_git_prompt

GIT_PROMPT_THEME=Custom
PathShort="\W"
GIT_PROMPT_PREFIX="("
GIT_PROMPT_SUFFIX=")"
GIT_PROMPT_CONFLICTS="${BoldRed}✖"
GIT_PROMPT_CHANGED="${BoldBlue}✚"
GIT_PROMPT_STASHED="${BoldBlue}⚑"
GIT_PROMPT_START="${BoldYellow}${PathShort}${ResetColor}"
GIT_PROMPT_END=" ${BoldCyan}»${ResetColor} "
