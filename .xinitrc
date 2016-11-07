# Solarized colors & font settings
xrdb ~/.Xresources
# background
setroot -z ~/Pictures/paintings/fish.jpg
# cursor
xsetroot -cursor_name left_ptr
# cursor acceleration
xset m 3/2 0
# internal keyboard
# setxkbmap -device 3 -option 'ctrl:rwin_rctrl,ctrl:ralt_rctrl'
# keys for internal keyboard
# xmodmap ~/.Xmodmap
# shadows
compton -o 0.3 -r 10 --no-fading-openclose &
# # album art
# conky &
# flux
redshift -r &
# notifications
twmnd &
# keys
sxhkd &
# terminal
ec &
# windows
exec karmen -font "Source Sans Pro"
