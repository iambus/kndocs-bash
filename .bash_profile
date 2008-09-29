# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

if [ $TERM = 'linux' ]; then
    LANG=en_US.UTF-8
    LANGUAGE=en_US:en
fi

export PATH
unset USERNAME
