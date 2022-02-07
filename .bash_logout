#!/bin/sh
killall pulseaudio
killall pipewire
killall pipewire-media-session
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
