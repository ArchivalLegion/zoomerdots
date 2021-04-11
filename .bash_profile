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

# Ivy Bridge 4000 is pretty much on its last legs
# of OpenGL support, 4.3 is the maximum supported by it
# and some programs throw errors without this.
#export MESA_GL_VERSION_OVERRIDE=4.5

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
