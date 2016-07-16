#!/bin/bash

OSTYPE=$(uname)

IS_LINUX=false
IS_MACOS=false

[[ $OSTYPE == "Linux" ]] && IS_LINUX=true
