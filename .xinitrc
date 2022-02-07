#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb -I $HOME ~/.Xresources
#dbus-launch --exit-with-x11 icewm-session -b
#icewm-session -b
