# Default programs
export EDITOR="nano"
export TERMINAL="urxvt"
export BROWSER="chromium"
export FILE="spacefm"

# Paths
export PATH=/usr/lib/llvm/8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin
export PATH=$PATH:$HOME/.local/bin

# Paths for .files and rc's
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"


# Set some useful theme / vaapi stuff
export QT_QPA_PLATFORMTHEME=gtk2
export VAAPI_DISABLE_INTERLACE=1
export GST_VAAPI_ALL_DRIVERS=1
export MESA_NO_DITHER
export LIBVA_DRIVER_NAME=i965

# Safe ivy bridge compile options,
# please set march accordingly otherwise use generic.
COMMON_FLAGS="-march=ivybridge -O2 -pipe"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"
# i7 3610qm
export MAKEFLAGS="-j9"
