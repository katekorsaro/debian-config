#! /bin/bash

feh --bg-fill /usr/share/themes/wallpapers/current-wallpaper.png &
xmodmap -e "pointer = 1 2 3" &
amixer -q set Master 30% &
# picom &
unclutter --idle 3 &
light-locker --lock-on-lid --lock-on-suspend &
sudo tlp start &
sudo powertop --auto-tune &
nordvpn connect &
