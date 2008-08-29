# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
## by kneo

PS1="\[\e[32m\]\u\[\e[0m\e[31m\]@\[\e[0m\e[35m\]\h\[\e[0m\e[31m\]:\[\e[0m\e[33m\]\w\[\e[0m\e[36m\]$\[\e[0m\] "

# aliases
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias la='ls -a'
alias l.='ls -d .*'
alias ll='ls -l'
alias l1='ls -1'
alias listall='find .|sort'

alias ..='cd ..'
alias ...='cd ../..'

alias en='export LANG=en_US.UTF8'
alias zh='export LANG=zh_CN.UTF8'

alias ls='ls --color=tty'
alias tcl='rlwrap tclsh'
alias gvi='vi -g'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

# load MY bash configuration...

loadbash() {
    if [ -f "$1" ]; then
        . "$1"
    fi
}

if [ `pwd` != ~/konfigs/bash_local ]; then
    loadbash kneo.bash
fi
loadbash ~/konfigs/bash_local/kneo.bash

