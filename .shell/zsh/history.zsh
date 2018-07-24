export HISTFILE=$HOME/.shell/.zsh_history

HISTSIZE=50000
SAVEHIST=10000

HOSTNAME=`hostname -s || na`

setopt extended_history
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt sharehistory
