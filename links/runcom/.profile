# PATH
export PATH="/usr/local/sbin:$PATH"

# asdf
export ASDF_DIR=/usr/local/opt/asdf
[[ -f "/usr/local/opt/asdf/asdf.sh" ]] && source "/usr/local/opt/asdf/asdf.sh"

# bashrc
[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
