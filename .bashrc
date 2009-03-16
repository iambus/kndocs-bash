# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
## by kneo

HISTSIZE=1000

# colors

PS1="\[\e[32m\]\u\[\e[0m\e[31m\]@\[\e[0m\e[35m\]\h\[\e[0m\e[31m\]:\[\e[0m\e[33m\]\w\[\e[0m\e[36m\]$\[\e[0m\] "

# For Putty
if [ "$SSH_TTY" != "" ];  then
    LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:"
fi

# aliases
alias del='rm -i'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias la='ls -a'
alias l.='ls -d .*'
alias ll='ls -l'
alias l1='ls -1'
alias listall='find .|sort'

#alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias ..........='cd ../../../../../../../../..'

alias en='export LANG=en_US.UTF8'
alias zh='export LANG=zh_CN.UTF8'

alias ls='ls --color=tty'
alias tcl='rlwrap tclsh'
alias gvi='vi -g'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

alias ds='du -sh'

# load MY bash configuration...

loadbash() {
    if [ -f "$1" ]; then
        . "$1"
    fi
}

if [ `pwd` != ~/konfigs/bash-local ]; then
    loadbash kneo.bash
fi
loadbash ~/konfigs/bash-local/kneo.bash

