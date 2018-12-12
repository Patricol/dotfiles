# Alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# enable color aliases of ls if supported
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'



alias syu='aurman -Syu'
function pacs() {
	aurman -S --repo $@
}
function aurs() {
	aurman -S --aur $@
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
	sudo docker pull $1
	sudo docker run --rm -it $@
}
alias drfa='drf alpine /bin/sh'
alias drfarch='drf patricol/arch /bin/bash'
alias alpine='sudo docker run --rm -it alpine /bin/sh'
function rgrep() {
	grep -r $@
}

function docker() {
	sudo docker $@
}

function checli() {
	sudo docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /home/docker/che:/data eclipse/che-cli $@
}

function checliver() {
	sudo docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /home/docker/che:/data eclipse/che-cli:$@
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
alias cdback='cd -'
alias cdhome='cd ~'
#dotfiles git (rather than dfr (dotfiles repo) which is too close to drf (docker run fast.)) also deathfire grasp.
alias dfg='git --git-dir=$HOME/.dotfiles-repo/ --work-tree=$HOME'
