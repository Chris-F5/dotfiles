while true; do
  xsetroot -name "$(battery_info) - $(date +"%Y %b %d %a %H:%M")"
  sleep 1
done &
#syncthing serve --no-browser &
#find ~/r/dotfiles/wallpapers/tripple -type f | sort -R | head -n1 | xargs feh --bg-scale --no-xinerama
#xrandr --output HDMI-A-2 --auto --output HDMI-A-1 --auto --left-of HDMI-A-2 --output DVI-D-1 --auto --right-of HDMI-A-2
#xrandr --output HDMI-A-1 --auto --output HDMI-A-1 --off --output DVI-D-1 --off
#xcompmgr -n -f -I 0.1 -O 0.1 -D 8 &
xcompmgr -n &
xset r rate 300 50
setxkbmap gb
#xhost +
exec dwm
