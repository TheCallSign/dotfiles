# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setup defaults
EDITOR=/usr/bin/vim

# NVM directory setup
if [[ -x `which nvm 2>/dev/null`  ]]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

if [[ -n $USE_BASH ]]; then 
 echo 'Using Bash'
 # Load the prompt
 source ~/.shell/liquidprompt/liquidprompt
 return
fi


# Check if zsh is install, if it is run it 
if [ ! -x `which zsh 2>/dev/null` ] && [ ! -f '~/.no_zsh' ]; then
    zsh 
    exit
else
    if [[ ! -f '~/.no_zsh' ]]; then
        echo 'Zsh not installed, install it? [y/n]'
        read opt
        if [[ $opt == "Y" || $opt == "y" ]]; then 
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


