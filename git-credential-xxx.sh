#!/bin/bash

set -x

case ${1}
in
    get)
        while read line
        do
            echo ++ $line >&2
        done
        cat /tmp/x.store
        ;;
    store)
        cat - > /tmp/x.store 
        ;;
    erase)
        ;;
esac
