while true; do
  song=$(mpc current)
  if [ -n "$song" ]; then
    song="$song | "
  fi
  xsetroot -name "$song$(date +"%Y %b %d %a %H:%M")"
  sleep 1
done &
syncthing serve --no-browser &
find ~/r/dotfiles/wallpapers/tripple -type f | sort -R | head -n1 | xargs feh --bg-scale --no-xinerama
xrandr --output HDMI-A-1 --auto --output HDMI-A-1 --auto --right-of HDMI-A-2 --output DVI-D-1 --auto --left-of HDMI-A-2
#xrandr --output HDMI-A-1 --auto --output HDMI-A-1 --off --output DVI-D-1 --off
xset r rate 300 50
xcompmgr -n -f -I 0.1 -O 0.1 -D 8 &
setxkbmap gb
xhost +
exec dwm
