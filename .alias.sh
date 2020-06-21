#!/bin/sh

# general
# alias ls='ls --color=auto'
alias c="clear"
alias e="exit"

# XCaode
alias xcode="open -a Xcode"

# NPM
alias nG1="npm list -g --depth=0"
alias nG2="npm list -g --depth=1"
alias nL1="npm list --depth=0"
alias nL2="npm list --depth=1"
alias nG=nG1
alias nL=nL1

# Docker compose
alias dco="docker-compose"
alias dcps="docker-compose ps"
alias dcrun="docker-compose run"
alias dce="docker-compose exec"
alias dcb="docker-compose build"
alias dcpull="docker-compose pull"
alias dcstart="docker-compose start"
alias dcstop="docker-compose stop"
alias dcrm="docker-compose remove"
alias dcrestart="docker-compose restart"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"
alias dcdn="docker-compose down"
alias dcl="docker-compose logs"
alias dclf="docker-compose logs -f"

# ReactNative
alias rn="react-native"
alias rns="react-native start"
alias rnlink="react-native link"
alias rnloga="react-native log-android"
alias rnlogi="react-native log-ios"