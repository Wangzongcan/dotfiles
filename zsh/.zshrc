# PATH
export PATH="/usr/local/sbin:$PATH"

source $HOME/.zinit/bin/zinit.zsh

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

zinit light zsh-git-prompt/zsh-git-prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
PROMPT='%{$fg_bold[red]%}%1~%b$(git_super_status) %{$fg_bold[cyan]%}»%{$reset_color%} '

zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh

# asdf
[[ -f $HOME/.asdf/asdf.sh ]] && source $HOME/.asdf/asdf.sh
fpath=($HOME/.asdf/completions $fpath)

# aliases
[[ -f $HOME/.aliases ]] && source $HOME/.aliases

# aliases
[[ -f $HOME/.localrc ]] && source $HOME/.localrc

autoload -Uz compinit && compinit
