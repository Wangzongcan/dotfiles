# bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && source "/usr/local/etc/profile.d/bash_completion.sh"

# bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/prompt-colors.sh"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

GIT_PROMPT_THEME=Custom
PathShort="\W"
GIT_PROMPT_PREFIX="("
GIT_PROMPT_SUFFIX=")"
GIT_PROMPT_CONFLICTS="${BoldRed}✖"
GIT_PROMPT_CHANGED="${BoldBlue}✚"
GIT_PROMPT_STASHED="${BoldBlue}⚑"
GIT_PROMPT_START="${BoldRed}${PathShort}${ResetColor}"
GIT_PROMPT_END=" ${BoldCyan}»${ResetColor} "
