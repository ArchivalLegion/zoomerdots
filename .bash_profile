# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# Default programs
export EDITOR="nano"
export TERMINAL="urxvt"
export BROWSER="firefox"
export FILE="thunar"

# Path
export PATH=$PATH:$HOME/.local/bin


# Paths for .files, otherwise they clutter ~
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"

# Quiet GTK
export NO_AT_BRIDGE=1

# Set qt5 theme engine using plugin styles
export QT_QPA_PLATFORMTHEME=gtk2


# Ivy bridge compile options,
# please set march accordingly otherwise use generic / native.
#COMMON_FLAGS="-march=ivybridge -O2 -pipe"
#CFLAGS="${COMMON_FLAGS}"
#CXXFLAGS="${COMMON_FLAGS}"
#FCFLAGS="${COMMON_FLAGS}"
#FFLAGS="${COMMON_FLAGS}"
# i7 3610qm
#export MAKEFLAGS="-j5"
