#!/bin/bash
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# init export
.  ~/dotfiles/export.sh

# init alias
.  ~/dotfiles/alias.sh

# init  func
. ~/dotfiles/bin/func.sh

# init z   https://github.com/rupa/z
. ~/dotfiles/bin/z/z.sh

# heroku toolbelt
PATH="/usr/local/heroku/bin:$PATH"