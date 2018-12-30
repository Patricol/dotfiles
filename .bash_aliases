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
alias ll='ls -AlhF'
alias llr='ls -AlhFR'
alias lrl='llr'
alias la='ls -A'
alias lar='ls -AR'
alias lra='lar'
alias lr='ls -R'
alias l='ls -CF'



alias counttypes='find . -type f -exec basename {} \; | sed -n "s/..*\.//p" | sort | uniq -c | sort -nr'
function ftype() {
	find . -type f -name "*.$1"
}
function ftypei() {
	find . -type f -name "*.$1" -exec file {} \;
}
alias eb='exec bash'

function rgrep() {
	grep -r $@
}

function fkill() {
	sudo killall -KILL $@
}

alias colorsx='for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""'

alias colors='for i in {0..255} ; do printf "\x1b[38;5;${i}m%3d " "${i}"; if (( $i == 15 )) || (( $i > 15 )) && (( ($i-15) % 12 == 0 )); then echo; fi; done'

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

alias bal='vim ~/.bash_aliases'
alias brc='vim ~/.bashrc'

#dotfiles git (rather than dfr (dotfiles repo) which is too close to drf (docker run fast.)) also deathfire grasp.
alias dfg='git --git-dir=$HOME/.dotfiles-repo/ --work-tree=$HOME'

alias mineofetch='neofetch --config ~/.config/neofetch/mini.conf'
alias material='wal -g -f ~/.config/wal/colorschemes/dark/custom-material.json'
alias nomaterial='wal -g -f ~/.config/wal/colorschemes/dark/default.json'
