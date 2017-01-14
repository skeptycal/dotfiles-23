export PATH="$PATH:$HOME/bin"

# Solarized colors & font settings
xrdb ~/.Xresources
# background
setroot -z ~/Pictures/background.jpg
# cursor
xsetroot -cursor_name left_ptr
# cursor acceleration
xset m 3/2 0
# volume notifications
volnoti
# shadows
compton -o 0.3 -r 10 --no-fading-openclose &
# flux
redshift -r -l 45.5231:-122.6765 -t 5000:3000 -m randr -g 1.1 &
# notifications
twmnd &
# keys
sxhkd &
# windows
exec karmen -font "monospace"
# exec ~/Git/nocfgwm/target/debug/wm
