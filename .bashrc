# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setup defaults
EDITOR=/usr/bin/vim

# NVM directory setup
if [[ -x `which nvm` ]]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Check if zsh is install, if it is run it 
if [[ -x `which zsh` ]]; then
    zsh
    exit
else
    if [ ! -f '~/.no_zsh' ]; then
        echo 'Zsh not installed, install it? [Y/n]'
        read opt
        if [ -e $opt 'y' || 'Y']; then 
            if [[ -x `which yum` ]]; then
                sudo yum install zsh
            elif [[ -x `which apt` ]]; then
                sudo apt install zsh
            elif [[ -x `which pacman` ]]; then 
                sudo pacman -S zsh
            fi 
        else 
            touch ~/.no_zsh
        fi
    fi
fi

# Load the prompt
source ~/.shell/liquidprompt/liquidprompt
