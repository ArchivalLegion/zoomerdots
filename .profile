# Set XDG_RUNTIME_DIR without elogind
 if test -z "${XDG_RUNTIME_DIR}"; then
     export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
     if ! test -d "${XDG_RUNTIME_DIR}"; then
         mkdir "${XDG_RUNTIME_DIR}"
         chmod 0700 "${XDG_RUNTIME_DIR}"
     fi
 fi

# Default programs
export EDITOR="nano"
export TERMINAL="urxvt"
export TERM="urxvt"
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

# Safe ivy bridge compile options,
# please set march accordingly otherwise use generic.
COMMON_FLAGS="-march=ivybridge -O2 -pipe"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"

# i7 3610qm
export MAKEFLAGS="-j9"
