export PATH=$HOME/.bin:$PATH
~/.config/wpg/wp_init.sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3
