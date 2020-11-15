# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Set the prompt, sourced from artix linux
export PS1='\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] '

# Make sudo work within alias's
alias sudo='sudo '

# Time savers
alias %b='cat /sys/class/power_supply/BAT?/capacity'
alias spc='picom -b'
alias sx='clear && startx'
alias mpt='mpv --profile=tty'
