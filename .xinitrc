export PATH=$HOME/.bin:$PATH
wpg -r
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3
