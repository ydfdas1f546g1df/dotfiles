#
# ~/.bashrc
#
export TERMINAL=kitty


/home/arch/.config/autostart/scripts/main.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
