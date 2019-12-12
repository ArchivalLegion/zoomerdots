# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything

case $- in
    *i*) ;;
      *) return;;
esac

# Put your fun stuff here.
export PATH=/usr/lib/llvm/8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin:$HOME/hocus
export VAAPI_DISABLE_INTERLACE=1
export GST_VAAPI_ALL_DRIVERS=1
export LIBVA_DRIVER_NAME=i965
export MAKEFLAGS="-j9"
export QT_QPA_PLATFORMTHEME=gtk2
export WINEDEBUG=-all
