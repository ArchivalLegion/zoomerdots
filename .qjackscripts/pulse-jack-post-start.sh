#!/bin/dash
pactl load-module module-jack-sink sink_name="Vanilla-Jack" client_name="Standard-Sink" channels=2
pactl load-module module-jack-sink sink_name="Unholy" client_name="Pulse-Soundboard" connect=0 channels=2
pactl load-module module-jack-source channels=2
pacmd set-default-sink "Vanilla-Jack"
pacmd set-default-source jack_in
