# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Errata
alias sudo='sudo '

# Quickies
alias %b="cat /sys/class/power_supply/BAT?/capacity"

# Void linux
alias vdate='sudo xbps-install -Su'
alias xbi='sudo xbps-install'
alias xbr='sudo xbps-remove -R'
alias xbq='xbps-query'
