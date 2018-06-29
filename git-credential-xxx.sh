#!/bin/bash

set -xoe

case ${1}
in
    get)
        cat /tmp/x.store
        ;;
    store)
        cat - > /tmp/x.store 
        ;;
    erase)
        ;;
esac
