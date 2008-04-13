# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
## by kneo
alias ls='ls --color'
alias tcl='rlwrap tclsh'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

PS1="\[\e[32m\]\u\[\e[0m\e[31m\]@\[\e[0m\e[35m\]\h\[\e[0m\e[31m\]:\[\e[0m\e[33m\]\w\[\e[0m\e[36m\]$\[\e[0m\] "
