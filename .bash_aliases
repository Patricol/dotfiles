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

alias rr='echo "run-regularly..."; sudo systemctl restart run-regularly.service'

alias counttypes='find . -type f -exec basename {} \; | sed -n "s/..*\.//p" | sort | uniq -c | sort -nr'
function ftype() {
	find . -type f -name "*.$1"
}
function ftypei() {
	find . -type f -name "*.$1" -exec file {} \;
}
function drf() {
	sudo docker run --rm -it $@
}
function dpf() {
	sudo docker pull $@
}
function dprf() {
	#Can only use when no options are provided before the container name; fix that later.
	dpf $1
	drf $@
}
alias drfa='dprf alpine /bin/ash'
alias drfalpine='drfa'
alias alpine='drfa'
alias drfu='dprf ubuntu /bin/bash'
alias drfubuntu='drfu'
alias ubuntu='drfu'
alias drfarch='dprf patricol/arch /bin/bash'
alias drfar='drfarch'
alias arch='drfarch'
function drfg() {
	dpf $1 && drf -e RDP_OR_VNC="RDP" -p 3389:3389 -p 5900:5900 $1 /bin/bash
}
alias drfgui='drfg patricol/terminal:latest'

alias eb='exec bash'
alias be='eb'
alias ebnrc='exec bash --norc --noprofile'


function docker() {
	sudo docker $@
}


function checliver() {
	sudo docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /home/docker/che:/data eclipse/che-cli:$@
}

function checli() {
       checliver `cat /home/docker/che/instance/che.ver.do_not_modify` $@
}

alias logs='sudo journalctl -xe'

function mountiso() {
	sudo mount -o loop $@ /media/iso
}

alias umountiso='sudo umount /media/iso'
function fkill() {
	sudo killall -KILL $@
}

function merge() {
	rsync --remove-source-files -abviuAP $@
}

alias colorsx='for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""'

alias colors='for i in {0..255} ; do printf "\x1b[38;5;${i}m%3d " "${i}"; if (( $i == 15 )) || (( $i > 15 )) && (( ($i-15) % 12 == 0 )); then echo; fi; done'
alias colorst='msgcat --color=test'

function extract() {
	7z x $@
        # if the format is like .tar.gz, it'll give you a tar file. maybe handle that here. also maybe have it always extract into a new folder sharing the name of the archive. and ask before overwriting; and other similar options.
       # it also does that for .tgz. should just list the contents, and if the archive contains one single tar file, run different command.
}
#anything handled by the tar command, do with tar. everything else goes through 7z; which lets me benefit from wide compatibility while using the most up-to-date kernel stuff for tar-related archives, which are the most critical and likely what I should standardize on.
#gzip seems much less resistant to corruption than xz.
#maybe add functions for creating archives of different types.
#I do really care about avoiding corruption.
#zip vs tgz vs txz vs ?
#txz is best for compression, efficiency etc.
#extracting individual files from zip is faster. zip is also more ubiquitous.

#function maketxz() {
#}
#function makezip() {
#}

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
alias dfgs='dfg status'
alias dfgd='dfg diff'
alias dfgdc='dfgd --cached'
#provide the branch to pull changes from as an arg
alias dfgm='dfg difftool -d -t meld'

alias mineofetch='neofetch --config ~/.config/neofetch/mini.conf'
alias mnf='mineofetch'
alias nf='neofetch'
alias nfa='neofetch --ascii'

function wpgsetfast() {
	wpg -n -s $1.png
	xrdb ~/.Xresources
}
function wpgset() {
	wpgsetfast $1
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
alias fmaterial='wpgsetfast material'
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
