#!/bin/bash

alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'

# chruby
source "$(brew --prefix chruby)/share/chruby/chruby.sh"
chruby "2.4"
