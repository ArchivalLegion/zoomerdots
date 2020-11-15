if [[ -f ~/.bashrc ]]; then
      . ~/.bashrc
fi

# Default programs
export EDITOR="nano"
export BROWSER="chromium"
export FILE="pcmanfm"

# Paths
export PATH=$PATH:$HOME/.local/bin

# Paths for .files, otherwise they clutter ~
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"

# Wine
export WINEPREFIX=~/.openwound
export WINEARCH=win32

# Make Java less ugly
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"

# Quiet GTK
export NO_AT_BRIDGE=1

# Set qt5 theme using plugin styles
export QT_QPA_PLATFORMTHEME=gtk2

# Ivy bridge compile options,
# please set march accordingly otherwise use generic / native.
#COMMON_FLAGS="-march=ivybridge -O2 -pipe"
#CFLAGS="${COMMON_FLAGS}"
#CXXFLAGS="${COMMON_FLAGS}"
#FCFLAGS="${COMMON_FLAGS}"
#FFLAGS="${COMMON_FLAGS}"

# i7 3610qm
#export MAKEFLAGS="-j8"
