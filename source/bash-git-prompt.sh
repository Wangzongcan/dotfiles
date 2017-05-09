override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"

  PathShort="\W";

  GIT_PROMPT_PREFIX="("
  GIT_PROMPT_SUFFIX=")"

  GIT_PROMPT_BRANCH="${Magenta}"        # the git branch that is active in the current directory
  GIT_PROMPT_STAGED="${Red}●"          # the number of staged files/directories
  GIT_PROMPT_CONFLICTS="${Red}✖"       # the number of files in conflict
  GIT_PROMPT_CHANGED="${Blue}✚"        # the number of changed files

  GIT_PROMPT_REMOTE=" "                 # the remote branch name (if any) and the symbols for ahead and behind
  GIT_PROMPT_UNTRACKED="${Cyan}…"      # the number of untracked files/dirs
  GIT_PROMPT_STASHED="${BoldBlue}⚑"     # the number of stashed files/dir
  GIT_PROMPT_CLEAN="${BoldGreen}✔"     # a colored flag indicating a "clean" repo

  GIT_PROMPT_SHOW_UNTRACKED_FILES=normal

  GIT_PROMPT_START="${BoldYellow}${PathShort}${ResetColor}"
  GIT_PROMPT_END=" » "
}

reload_git_prompt_colors "Custom"
