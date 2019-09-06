#!/bin/bash

override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"

  PathShort="\W";

  GIT_PROMPT_PREFIX="("
  GIT_PROMPT_SUFFIX=")"

  GIT_PROMPT_CONFLICTS="${Red}✖"
  GIT_PROMPT_CHANGED="${Blue}✚"

  GIT_PROMPT_STASHED="${Blue}⚑"

  GIT_PROMPT_SHOW_UNTRACKED_FILES=normal

  GIT_PROMPT_START="${BoldYellow}${PathShort}${ResetColor}"
  GIT_PROMPT_END=" ${Cyan}»${ResetColor} "
}

reload_git_prompt_colors "Custom"
