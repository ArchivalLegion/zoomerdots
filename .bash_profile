if [[ -f ~/.bashrc ]]; then
      . ~/.bashrc
fi

# Default programs
export EDITOR="nano"
export BROWSER="chromium"
export FILE="spacefm"

# Paths
export PATH=$PATH:$HOME/.local/bin

# Moving various .dotfiles out of $HOME
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"

# Wine
export WINEPREFIX=~/.openwound
export WINEARCH=win32

# Set qt5 theme using plugin styles
export QT_QPA_PLATFORMTHEME=gtk2

# Generic compile options,
# please set march accordingly otherwise use generic / native.
export COMMON_FLAGS="-march=native -mtune=native -O2 -pipe"
export CFLAGS="${COMMON_FLAGS}"
export CXXFLAGS="${COMMON_FLAGS}"
export FCFLAGS="${COMMON_FLAGS}"
export FFLAGS="${COMMON_FLAGS}"
export MAKEFLAGS="-j$(nproc)"
