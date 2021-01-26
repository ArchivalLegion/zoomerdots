# Default programs
export EDITOR="nano"
export BROWSER="chromium"
export FILE="spacefm"

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

# Set qt5 theme engine using plugin styles
export QT_QPA_PLATFORMTHEME=gtk2

# Generic compile options,
# please set march accordingly otherwise use generic / native.
export COMMON_FLAGS="-march=native -mtune=native -O2 -pipe"
export CFLAGS="${COMMON_FLAGS}"
export CXXFLAGS="${COMMON_FLAGS}"
export FCFLAGS="${COMMON_FLAGS}"
export FFLAGS="${COMMON_FLAGS}"
export MAKEFLAGS="-j$(nproc)"
