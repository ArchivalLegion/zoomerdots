# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# Very "standard" programs will be set for simplicity sake,
# Edit this however needed to get settled.
# Default programs
export EDITOR="nano"
export TERMINAL="urxvt"
export BROWSER="chromium"

# Paths
export PATH=/usr/lib/llvm/8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin:$HOME/.local/bin

# Set some useful theme / vaapi stuff
export QT_QPA_PLATFORMTHEME=gtk2
export VAAPI_DISABLE_INTERLACE=1
export GST_VAAPI_ALL_DRIVERS=1

# Generic compile options,
# please set march accordingly otherwise use generic.
COMMON_FLAGS="-march=ivybridge -O2 -pipe"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"

# Specific but helpful
export LIBVA_DRIVER_NAME=i965
export MAKEFLAGS="-j9"
