#!/usr/bin/env bash

killall -q polkit-gnome-authentication-agent-1 waybar swayidle swaybg nm-applet mako wl-paste sleep
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
waybar -c ~/.config/waybar/river/config -s ~/.config/waybar/river/style.css &
mako &
sh ~/.config/river/scripts/pkill_bc &
nm-applet --indicator &
swayidle -w timeout 600 ~/.config/river/scripts/wayland_session_lock &
wl-clipboard-histry -t &
wl-paste --type text --watch cliphist store &
wl-paste --type images --watch cliphist store &
mpd &
mpDris &
