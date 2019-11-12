# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[\e[1;32m\][ \u : \t : \w ]\$\[\e[0m\] '

# ENV
export LC_COLLATE="C"

# User specific aliases and functions

alias ll="ls -lahF"
alias lart="ls -larthF"
alias grepc="grep --color"
alias w="watch"

#docker
alias dc=docker-compose
alias dm=docker-machine
alias ds="docker stack"
alias dse="docker service"

alias gdot='git --git-dir=$HOME/git/dotfiles.git --work-tree=$HOME'

#show file content OR list directory if directory (cat+ls)
function neko {
	[[ -d $1 ]] && ll $1 || cat $1
}

function cd {
	command cd $1 && ll
}
