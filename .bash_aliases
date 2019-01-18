# Alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# enable color aliases of ls if supported
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    
    alias diff='diff --color=auto'
    
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias rgrep='grep -r'

function man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# some more ls aliases
alias ll='ls -AlhF'
alias llr='ls -AlhFR'
alias lrl='llr'
alias la='ls -A'
alias lar='ls -AR'
alias lra='lar'
alias lr='ls -R'
alias l='ls -CF'

function fscrot() {
	scrot -q 100 -m -e 'mv $f ~/pictures/' $@
}

alias syu='aurman -Syu'
function pacs() {
	aurman -S --repo $@
}
function aurs() {
	aurman -S --aur $@
}
function aurr() {
	aurman -R $@
}
function pacr() {
	aurman -R $@
}
alias listexplicitlyinstalled='comm -23 <(pacman -Qqe | sort) <(pacman -Qqg base base-devel | sort) | sort -n'
alias listexplicitlyinstalledbysize='expac -H M "%011m\t%-20n\t%10d" $(comm -23 <(pacman -Qqe | sort) <(pacman -Qqg base base-devel | sort)) | sort -n'

alias counttypes='find . -type f -exec basename {} \; | sed -n "s/..*\.//p" | sort | uniq -c | sort -nr'
function ftype() {
	find . -type f -name "*.$1"
}
function ftypei() {
	find . -type f -name "*.$1" -exec file {} \;
}

alias eb='exec bash'
alias be='eb'
alias ebnrc='exec bash --norc --noprofile'


function fkill() {
	sudo killall -KILL $@
}

alias colorsx='for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""'

alias colors='for i in {0..255} ; do printf "\x1b[38;5;${i}m%3d " "${i}"; if (( $i == 15 )) || (( $i > 15 )) && (( ($i-15) % 12 == 0 )); then echo; fi; done'
alias colorst='msgcat --color=test'

alias cdup='cd ..'
alias cdu='cdup'
alias cdback='cd -'
alias cdb='cdback'
alias cdhome='cd ~'
alias cdh='cdhome'
alias c='clear'
alias cls='clear && ls'
alias cl='cls'
alias x='exit'

#open vim to bottom of file.
alias vimbottom='vim "+ normal GA"'

alias bal='vimbottom ~/.bash_aliases'
alias brc='vimbottom ~/.bashrc'

#dotfiles git (rather than dfr (dotfiles repo) which is too close to drf (docker run fast.)) also deathfire grasp.
alias dfg='git --git-dir=$HOME/.dotfiles-repo/ --work-tree=$HOME'
alias dfgk='add_ssh_key github_fcdcbda'

alias mineofetch='neofetch --config ~/.config/neofetch/mini.conf'

function wpgset() {
	wpg -n -s $1.png > /dev/null
	oomox-cli -o oomox-wpg -t ~/.themes -d false -m all ~/.config/oomox/colors/oomox-wpg
	oomox-materia-cli -o materia-wpg -d false ~/.config/oomox/colors/materia-wpg
}
alias wpg-material='wpgset material'
alias wpg-default='wpgset default'
alias wpg-distinct='wpgset debug-distinct'
alias wpg-distinct-flip='wpgset debug-distinct-flip'
alias wpg-red='wpgset debug-red'
alias wpg-yellow='wpgset debug-yellow'
alias material='wpg-material'
alias nomaterial='wpg-default'
alias rpl='LANG="en_US.UTF-8" powerline-daemon -qr'


function tif() {
    #test if statement
    if [ $@ ]; then
        echo "True"
    else
        echo "False"
    fi
}

alias epoch='date +%s'

