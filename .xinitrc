#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi


# Statusbar loop
#while true; do
#      xsetroot -name "$( date +"%d/%m/%+4Y %H:%M" )"
#          sleep 1s    # Update time every minute
#      done &

# start some nice programs

picom -b &
redshift -l 48.8:9.01667 -t 5500:3500 &
dunst &
udiskie &
feh --bg-scale --randomize ~/Pictures/Wallpapers/* &
#exec dwm
#exec awesome
exec i3
