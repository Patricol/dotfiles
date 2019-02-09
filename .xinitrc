~/.config/wpg/wp_init.sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
pgrep xwinwrap || ~/.config/wallpapers/video-bg ~/.config/wallpapers/default-animated
exec i3
