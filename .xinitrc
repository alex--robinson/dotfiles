#setting the monitor to the correct relative position
xrandr --output HDMI1 --auto --left-of LVDS1
xrandr --output VGA1 --auto --left-of LVDS1
xrandr --output LVDS1 --pos 1920x700

export EDITOR="vim"
#have to export bin here to PATH since dmenu does not read
#bashrc
export PATH=$PATH:$HOME/bin

xset +fp /usr/share/fonts/local
xset fp rehash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#for automounting
udiskie &

exec i3

