#!/bin/bash
# this is just a sample demo
# do not use in production envirenment
set -x

store=/tmp/x.sotre

while getopts hf: opt
do
    case $opt
    in
    f) 
        if [ -n "$store" ]
        then
            store=$OPTARG
        fi
        shift 2
        ;;
    h)
        echo Usage git config credential.[your.git.domain].helper 'xxx.sh -f [STORE FILE]'
        shift
        ;;
    esac

done

case ${1}
in
    get)
        while read line
        do
            echo ++ $line >&2
        done
        cat $store
        ;;
    store)
        cat - > $store
        ;;
    erase)
        ;;
esac
