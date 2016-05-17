#!/bin/sh

# Minimal todo script by Adam Hallgat (https://github.com/hallgat89/)
# Put the following two lines into the bashrc(change the locations if needed)
#alias todo="~/todo.sh"
#alias did="~/todo.sh -d"


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
    else
	    echo $@ >> ~/todo.txt
    fi
fi

if [ -f $todofile ]
then
    todolines=`cat $todofile | wc -l`
    if [ "$todolines" -eq 0 ]
    then
        rm $todofile  #deletes the TODO file
        echo "Nothing in TODO"
    else
        echo "TODO:"
        cat -n $todofile
    fi
else
	echo "Nothing in TODO"
fi
