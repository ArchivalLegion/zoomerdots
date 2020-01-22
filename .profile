# Default programs
export EDITOR="nano"
export TERMINAL="urxvt"
export BROWSER="chromium"
export FILE="thunar"

# Paths
export PATH=/usr/lib/llvm/8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin
export PATH=$PATH:$HOME/.local/bin

# Paths for .files and rc's
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"


# Quiet GTK
export NO_AT_BRIDGE=1


# Set qt5 theme engine using plugin styles
export QT_QPA_PLATFORMTHEME=gtk2

# Ivy bridge compile options
# please set march accordingly otherwise use generic.
#COMMON_FLAGS="-march=ivybridge -O2 -pipe"
#CFLAGS="${COMMON_FLAGS}"
#CXXFLAGS="${COMMON_FLAGS}"
#FCFLAGS="${COMMON_FLAGS}"
#FFLAGS="${COMMON_FLAGS}"

# i7 3610qm
export MAKEFLAGS="-j9"
