#!/bin/sh
dbus-launch --exit-with-x11 icewm-session -b
systemctl --user import-environment DISPLAY
#icewm-session -b
