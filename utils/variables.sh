#!/bin/bash

OSTYPE=$(uname)

IS_LINUX=false
IS_MACOS=false

[[ $OSTYPE == "Darwin" ]] && IS_MACOS=true
[[ $OSTYPE == "Linux" ]] && IS_LINUX=true

SOURCE_DIR="$DOTFILES_DIR/source"
