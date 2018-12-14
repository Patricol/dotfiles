export PATH=$HOME/.bin:$PATH
wal -Rg
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3
