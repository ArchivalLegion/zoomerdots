# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Errata
alias sudo='sudo '

# Quickies
alias %b="cat /sys/class/power_supply/BAT?/capacity"
alias spc="picom -b"
alias sx="clear && startx"
