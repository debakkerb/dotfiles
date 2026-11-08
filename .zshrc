export VIMCONFIG=$HOME/.vim
export VIMDATA=$HOME/.vim

source $HOME/.zshrc.custom

alias ..='cd ..'
alias g='git'
alias l='ls -G'
alias ls='ls -Gal'
alias v='vim'

autoload -Uz compinit
compinit

eval "$(starship init zsh)"

# Added by Antigravity CLI installer
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
