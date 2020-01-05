# Default programs
export EDITOR="nano"
export TERMINAL="xterm"
export BROWSER="firefox"

# Set some useful theme / vaapi stuff
export QT_QPA_PLATFORMTHEME=gtk2
export VAAPI_DISABLE_INTERLACE=1
export GST_VAAPI_ALL_DRIVERS=1

# Generic compile options,
# please set march accordingly otherwise use generic.
COMMON_FLAGS="-march=native -O2 -pipe"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"

# Specific but helpful
export LIBVA_DRIVER_NAME=i965
export MAKEFLAGS="-j2"
