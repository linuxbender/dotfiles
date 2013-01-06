#!/bin/bash

#
# unpack file
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)        tar xjf $1                ;;
			*.tar.gz)        tar xzf $1                ;;
			*.bz2)                bunzip2 $1                ;;
			*.rar)                rar x $1                ;;
			*.gz)                gunzip $1                ;;
			*.tar)                tar xf $1                ;;
			*.tbz2)                tar xjf $1                ;;
			*.tgz)                tar xzf $1                ;;
			*.zip)                unzip $1                ;;
			*) 	echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# screen helper functions, for  to "kill" the complete session
ssk () {
	if [ -n $1 ] ; then
		screen -S $1 -X quit
		screen -list
	fi
}

#
# chmod helper
chmodF () {
	if [ -n $1 ] ; then
		find $2 -type f -print0 | xargs -0 chmod $1
	fi
}

chmodD () {
	if [ -n $1 ] ; then
		find $2 -type d -print0 | xargs -0 chmod $1
	fi
}
#
# open the current repo or open my github page
gito() {
	giturl=$(git config --get remote.origin.url)
	if [   -n "$giturl" ] ; then
		giturl=${giturl/git\@github\.com\:/https://github.com/}
		giturl=${giturl/\.git//}		
		$browser $giturl &
	else
		$browser "https://github.com/$gitName" &
	fi
}