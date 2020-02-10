for file in $HOME/.dotfiles/sources/*; do
    [[ -f "$file" ]] && source "$file"
done
unset file

[[ -f "$HOME/.bash_local" ]] && source "$HOME/.bash_local"
