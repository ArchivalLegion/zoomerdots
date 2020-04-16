# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Set the prompt
export PS1="\[\033[38;5;93m\]{\[$(tput sgr0)\]\[\033[38;5;86m\]\u\[$(tput sgr0)\]\[\033[38;5;1m\]@\[$(tput sgr0)\]\[\033[38;5;226m\]\H\[$(tput sgr0)\]\[\033[38;5;93m\]}\[$(tput sgr0)\]\[\033[38;5;46m\]\W\[$(tput sgr0)\]\[\033[38;5;93m\]>\[$(tput sgr0)\]"
# Make sudo work within alias's
alias sudo='sudo '

# Example
alias ls='ls --color=auto'

# Time savers
alias %b='cat /sys/class/power_supply/BAT?/capacity'
alias spc='picom -b'
alias sx='clear && startx'
alias mkccv='mkchromecast --encoder-backend ffmpeg --sample-rate 44100 -c ogg -b 224 --control --video -i'
