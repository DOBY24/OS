#!/bin/bash

volba=$1
uzivatele=$(who)
lichy="l"
sudy="s"
IFS=$'\n'
for line in $uzivatele; do
        IFS=$' '
        line=($line)
        uzivatel=${line[0]}
        terminal=${line[1]}
        IFS=$'/'
        terminal=($terminal)
        cisloter=${terminal[1]}
        if [ "$volba" = "$lichy" ]; then
                if (( $cisloter % 2 != 0 )); then
                        echo $uzivatel
                fi
        else
                if (($cisloter % 2 == 0 )); then
                        echo "Uzivatel na sudem term je " $uzivatel
                fi
        fi