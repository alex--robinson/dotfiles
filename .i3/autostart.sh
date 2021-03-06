#!/bin/bash


# set startup volume
#amixer set Master 40%

# disable beeps
xset -b &

# DPMS monitor settings (standby -> suspend -> off) (seconds)
xset dpms 300 600 900 &

# set LCD brightness
xbacklight -set 60 &

# OSD
#dunst &

#Notify-send when battery is low
#battery-notification.sh &

#starting cmus
#urxvtc -name cmus -e cmus &

#mpd, now using systemd
#[ ! -s ~/.config/mpd/pid ] && mpd
#urxvtc -name ncmpcpp -e ncmpcpp &

#auto-hide the mouse
#unclutter &

# background colour
#xsetroot -solid '#101010' &
#~/.i3/wallpaper.sh
xsetroot -bg '#151515' -fg '#252525' -mod 4 4

