

CURSCRIPT=$1
loadotherbash() {
    loadbash "`dirname $CURSCRIPT`/$1"
}

# load scripts
loadotherbash aliases.bash
loadotherbash guess.bash

# load more...
loadotherbash private.bash

