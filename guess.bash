
# guess name

guess() {
    CMD=$1
    shift
    FILENAME=`guessname $1`
    shift
    if [ -n "$CMD" -a -n "$FILENAME" ]; then
        $CMD $FILENAME $*
    fi
}

guessdo() {
    FILENAME=`guessname $1`
    shift
    CMD=$1
    shift
    if [ -n "$CMD" -a -n "$FILENAME" ]; then
        $CMD "$FILENAME" $*
    fi
}

guesscd() {
    DIR=`guessname $1`
    if [ -n "$DIR" ] ; then
        cd "$DIR"
    fi
}

guessvi() {
    FILE=`guessname $1`
    if [ -n "$FILE" ] ; then
        vi "$FILE"
    fi
}

alias gcd='guesscd'
alias gi='guessvi'

