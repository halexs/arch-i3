#
# ~/.bashrc
#
#Convenient bash commands
alias vbrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias vi3='vim ~/.config/i3/config'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#exec --no-startup-id startx
