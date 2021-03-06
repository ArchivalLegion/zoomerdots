if [[ -f ~/.bashrc ]]; then
      . ~/.bashrc
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Moving various .dotfiles out of $HOME
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"

# VAAPI / VDPAU
export VAAPI_MPEG4_ENABLED=true
export VDPAU_DRIVER=va_gl

# Wine
export WINEPREFIX=~/.openwound
export WINEARCH=win32

# Set qt5 theme using plugin styles
export QT_QPA_PLATFORMTHEME=gtk2

# Default text editor
export EDITOR="nano"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Generic compile options,
# please set march accordingly otherwise use generic / native.
export COMMON_FLAGS="-march=native -mtune=native -O2 -pipe"
export CFLAGS="${COMMON_FLAGS}"
export CXXFLAGS="${COMMON_FLAGS}"
export FCFLAGS="${COMMON_FLAGS}"
export FFLAGS="${COMMON_FLAGS}"
export MAKEFLAGS="-j$(nproc)"

# Set cursor theme
export XCURSOR_THEME=breeze_cursors
export XCURSOR_SIZE=32

# Auto start Xorg on tty1
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
