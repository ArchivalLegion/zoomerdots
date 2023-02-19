### ASH SHELL
# Source .profile for new instances
export ENV='/home/prostagama/.profile'

# Set the PS1 prompt
export PS1='\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] '

# Make files rw-rw-r in creation
umask 002

# Don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace:erasedups

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Move various dotfiles into .config
export GTK2_RC_FILES='$HOME/.config/gtk-2.0/gtkrc-2.0'
export GNUPGHOME='$HOME/.config/gnupg'
export WINEPREFIX='$HOME/.local/wine0'

# Set cursor theme
export XCURSOR_THEME='breeze_cursors'
export XCURSOR_SIZE='32'
###

### VARIOUS PROGRAM ENV
# Java font rendering
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'

# Wine
export WINEARCH='win32'

# VAAPI / VDPAU
export VAAPI_MPEG4_ENABLED='true'
export VDPAU_DRIVER='va_gl'

# Set qt theme engine
export QT_QPA_PLATFORMTHEME='gtk2'

# Default text editor
export EDITOR='nano'
###

### COMPILER ARGS / ENV
# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
# Generic compile options,
# please set march accordingly otherwise use generic / native.
export COMMON_FLAGS='-march=native -mtune=native -O2 -pipe'
export CFLAGS='${COMMON_FLAGS}'
export CXXFLAGS='${COMMON_FLAGS}'
export FCFLAGS='${COMMON_FLAGS}'
export FFLAGS='${COMMON_FLAGS}'
export MAKEFLAGS='-j$(nproc)'
###

# CHANGE TITLE OF TERMINALS
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
        ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

# Enable color support of various utils
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Homebrew
alias %b='cat /sys/class/power_supply/BAT?/capacity'
alias sx='clear;startx'
alias mpt='mpv --profile=tty'

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
