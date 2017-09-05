#!/bin/bash

usage="Usage: $0 -p <sum program> <file> <hash>"
sumprog=""

if [ "$1" == "-p" ]; then
    shift
    sumprog="$1"
    shift
fi

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "$usage"
    exit 1
fi
if [ ! -z "$sumprog" ]; then
    "$sumprog" "$1" | cut -d " " -f1 | diff -i -Z - <(echo "$2")
else
    sha1sum "$1" | cut -d " " -f1 | diff -i -Z - <(echo "$2")
fi
