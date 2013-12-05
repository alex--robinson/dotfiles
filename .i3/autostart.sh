#!/bin/bash


# set startup volume
amixer set Master 40%

# disable beeps
xset -b &

# DPMS monitor settings (standby -> suspend -> off) (seconds)
xset dpms 300 600 900 &

# set LCD brightness
xbacklight -set 60 &

# OSD
#dunst &

# background colour
#xsetroot -solid '#101010' &
~/.i3/wallpaper.sh

