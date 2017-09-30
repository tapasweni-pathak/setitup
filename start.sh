#!/bin/bash

. ./installthese.sh
. ./gitclonethese.sh
. ./remainingthings.sh

welcome(){


echo "
===================================
        sudo make it ready!
===================================
"
for file in $(ls ./)
do
    if [ $file != installthese.sh ]
    then
        echo $file
    fi

done;
}

