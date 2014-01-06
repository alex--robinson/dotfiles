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
dunst &

#Notify-send when battery is low
battery-notification.sh &

#starting cmus
urxvt -name scratchpad -e cmus &

#set up a tmux server, hosting a vim server!


# background colour
#xsetroot -solid '#101010' &
~/.i3/wallpaper.sh

