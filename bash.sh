#!/bin/bash

x=(1.1 1.2 1.3 1.4 1.5)
y=(2.1 2.2 2.3 2.4 2.5)

for k in 0 1 2 3 4
do
    n=${x[$k]}
    f="xB = "
    nx=$f$n
    perl -pi -e "s/.*/$nx/ if $. == 1 " file.txt

    n=${y[$k]}
    f="yB = "
    ny=$f$n
    perl -pi -e "s/.*/$ny/ if $. == 2 " file.txt
    
    cat file.txt
    cp file.txt 
    echo "Make"
    echo " "
done
