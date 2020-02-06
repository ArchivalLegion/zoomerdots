# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Errata
alias sudo='sudo '

# Quickies
alias %b="cat /sys/class/power_supply/BAT?/capacity"
alias spc="picom -b"
alias sx="clear && startx"
alias eup="sudo emerge -uDU --keep-going --with-bdeps=y @world"
