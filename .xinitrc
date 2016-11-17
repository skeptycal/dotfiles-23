export PATH="$PATH:$HOME/bin"

# Solarized colors & font settings
xrdb ~/.Xresources
# background
setroot -z ~/Pictures/background.jpg
# cursor
xsetroot -cursor_name left_ptr
# cursor acceleration
xset m 3/2 0
# shadows
compton -o 0.3 -r 10 --no-fading-openclose &
# flux
# notifications
twmnd &
# keys
sxhkd &
# terminal
ec &
# windows
exec karmen -font "Source Sans Pro"
