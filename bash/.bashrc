# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin

alias tmux="tmux -2"
alias python=python3

alias bc="bc -lq"

export TERM=xterm-256color

function ecmd {
	command=$1
	args=""
	shift
	for arg in $@; do
		args=$args' "'$arg'"'
	done
	command=$(echo '('$command $args')')
	echo $command
	emacsclient -e "$command"
}

function ff {
	ecmd find-file $1
}

function eag {
	ecmd ag "$@" $PWD
}

function man {
	ecmd man "$1"
}

function mgs {
	ecmd magit-status
}

function current_project {
	cwd=$PWD
	while [ ! -d ".git" ]; do
		cd ..
	done
	projectname=$(pwd | xargs basename)
	cd $cwd

	echo $projectname
}

function eninja {
	projectname=$(current_project)
	buildfolder=$(pwd | xargs basename)
	ecmd compile-and-rename ninja "*$projectname-$buildfolder-compilation*"
}

function gud {
	ecmd gud-gdb "gdb $@"
}

function ggdb {
	emacsclient -e "(gdb \"gdb -i=mi $1\")"
}

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='kak'
else
	export EDITOR='ff'
fi
