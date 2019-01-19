~/.config/wpg/wp_init.sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
LANG=en_US.UTF-8 exec i3
