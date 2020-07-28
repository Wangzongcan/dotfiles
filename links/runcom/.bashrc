for file in $HOME/.dotfiles/sources/*; do
    [[ -f "$file" ]] && source "$file"
done
unset file
