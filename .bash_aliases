# enable color support of various utils
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Ivy Bridge 4000 is pretty much on its last legs
# of OpenGL support, 4.3 is the maximum supported by it
# and wine throws errors without this.
alias wine='MESA_GL_VERSION_OVERRIDE=4.5 wine '

# Make sudo work within aliases
alias sudo='sudo '

# Time savers
alias %b='cat /sys/class/power_supply/BAT?/capacity'
alias sx='clear && startx'
alias mpt='mpv --profile=tty'
