#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#xrdb -merge ~/.Xresources

#Loads the .Xresources file to configure the urxvt terminal to new default
xrdb -load ~/.Xresources
#Launch i3 and log the state in case there are issues.
exec i3 -V >> ~/i3logs/i3log-$(date +'%F') 2>&1
