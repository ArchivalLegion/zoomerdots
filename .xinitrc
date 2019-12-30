#!/bin/sh

# The xinit program is used to start the X Window System server
# on systems that are not using a display manager.
# If no specific client program is given on the command line,
# xinit will look for a file in the user's home directory called .xinitrc
# to run as a shell script to start up client programs.
#
# If no specific server program is given on the command line,
# xinit will look for a file in the user's home directory called .xserverrc
# to run as a shell script to start up the server.

# THE WM/DE HAS TO BE THE LAST COMMAND OTHERWISE CLOSING A PROGRAM
# COULD KILL THE XSERVER!

xrdb -load $HOME/.Xresources
icewm-session

# Of course this can't be agnostic because this file is tailored for a single person's DE/WM setup
