#while true; do
#  xsetroot -name "$(repo_info) - $(battery_info) - $(date +"%Y %b %d %a %H:%M")"
#  sleep 1
#done &
/home/chris/scripts/monitor_taskbar.sh &
xbanish &
xcompmgr -n &
xset r rate 300 50
setxkbmap gb
xmodmap -e 'keysym Caps_Lock = '
exec dwm
