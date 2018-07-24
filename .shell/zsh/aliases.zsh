# Zsh  #
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshrestart="source ~/.zshrc"

# Directory Listing #
alias la="ls -ahl --color=auto"
alias ls='ls --color=auto'

# Git Aliases #
alias gitlisttracked="git ls-tree -r master --name-only"

# systemctl Commands #
which systemctl &>/dev/null
if [[ $? -eq 0 ]]; then
    which start &>/dev/null
    if [[ $? -eq 1 ]]; then
        alias start='sudo systemctl start'
    fi

    which stop &>/dev/null
    if [[ $? -eq 1 ]]; then
        alias stop='sudo systemctl stop'
    fi

    which restart &>/dev/null
    if [[ $? -eq 1 ]]; then
        alias restart='sudo systemctl restart'
    fi

    which status &>/dev/null
    if [[ $? -eq 1 ]]; then
        alias status='sudo systemctl status'
    fi
fi
