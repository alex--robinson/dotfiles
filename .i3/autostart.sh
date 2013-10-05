#!/bin/bash

# background colour
xsetroot -solid '#101010' &

# set startup volume
amixer set Master 40%

# disable beeps
xset -b &

# DPMS monitor settings (standby -> suspend -> off) (seconds)
xset dpms 300 600 900 &

# set LCD brightness
xbacklight -set 90 &

# OSD
dunst &

