#!/bin/bash

# List 
alias ll="ls -l"
# List only directories
alias lsd="ls -ld */ .*/"

#jup up 
alias ..="cd .."
alias ...="cd ../.."

# watch and tail
alias watch="watch -n 1 $1"
alias tail="tail -f $1"

#screen hotkeys
# ssl = list , ssn = new with name, ssr go in with name
alias  ssl="screen -list"
alias ssn="screen -dmS  $1"
alias ssr="screen -r $1"

#
# key-mon
alias key-mon="$PYTHONHOMEdd/usr/bin/python2 $HOME/program/key-mon-1.9/src/key-mon --old-keys=2"

# init spot https://github.com/guille/spot.git
alias spot="~/dotfiles/bin/spot/spot.sh"