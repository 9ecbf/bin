#!/bin/bash

help() {
    echo "Run a program in a tmux session."
    echo ""
    echo "Usage: d <program> [arguments]"
    echo "    program      the program name"
    echo "    arguments    the program arguments"
}

[ ! -f "$(which tmux)" ] && echo "'tmux' not found" && exit 1
[ -z "$1" ] && help && exit 1

[ ! -z "$(which $1)" ] && tmux new -s "$1" -d "$@" \
    || (echo "program '$1' not found" && exit 1)
