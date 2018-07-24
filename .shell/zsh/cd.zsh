cd () {

builtin cd "$*"
	if [ $# -ne 0 ]; then # if no argument/path supplied, go to home directory
		if [ $? -ne 0 ]; then # was cd command successful? if so, ls
			echo "cd failed with exitcode=1"
  	else
			ls --color=auto
		fi
	else
		builtin cd ~
		ls --color=auto
	fi
}

cdd () {
	builtin cd "$*"
}
