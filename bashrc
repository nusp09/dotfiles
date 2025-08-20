#
# ~/.bashrc
#
export PATH=$PATH:~/.local/bin
neofetch
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/shrek/.spicetify

# Created by `pipx` on 2025-08-19 23:10:45
export PATH="$PATH:/home/shrek/.local/bin"
alias vim='nvim'
alias please='sudo' 	 
alias ll='ls -lah'         # Detailed file listing
alias ..='cd ..'           # Move up one directory
alias ...='cd ../..'       # Move up two directories
alias c='clear'            # Clear the terminal

mkcd () {
    mkdir -p  && cd 
}

