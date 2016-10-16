# Solarized colors & font settings
xrdb ~/.Xresources
# background
setroot -z ~/Pictures/paintings/fish.jpg
# cursor acceleration
xset m 3/2 0
# shadows
compton -o 0.3 -r 10 --no-fading-openclose &
# flux
redshift -r &
# notifications
twmnd &
# keys
sxhkd &
# terminal
urxvt &
# windows
exec karmen -font "Source Sans Pro"
