#!/bin/sh

# Minimal todo script by Adam Hallgat (https://github.com/hallgat89/)
# Put the following two lines into the bashrc(change the locations if needed)
#alias todo="~/.scripts/todo.sh"
#alias did="~/.scripts/todo.sh -d"
# quick info for terminal: todo -c

todofile="$HOME/todo.txt"
todotemp="/tmp/todotemp.txt"

if [ "$#" -gt "0" ]
then
    if [ "$#" -eq "2" -a "$1" = "-d" ]
    then
        if [ -f $todofile ]
        then
            # Exclude line
            awk "!(NR==$2)" $todofile > $todotemp && mv $todotemp $todofile
        fi
    elif [ "$#" -eq "1" -a "$1" = "-d" ]
    then
        echo "No TODO number specified!"
    elif [ "$#" -eq "1" -a "$1" = "-c" ]
    then
	    if [ -f $todofile ]
	    then
		echo "There are `cat $todofile | wc -l` things to do."
		exit 0
	    else
		echo "Nothing in TODO"
		exit 0
	    fi
    else
	    echo "$@" >> $todofile
    fi
fi

if [ -f "$todofile" ]
then
    todolines=`cat $todofile | wc -l`
    if [ "$todolines" -eq 0 ]
    then
        rm $todofile  #deletes the TODO file
        echo "Nothing in TODO"
    else
        echo "TODO:"
        cat -n "$todofile"
    fi
else
	echo "Nothing in TODO"
fi
