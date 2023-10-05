#!/bin/bash

if [ $# -eq 1 ]; then
    SIZE="80x80"
    INPUT=${1}
    OUTPUT="./out.bin"
elif [ $# -eq 2 ]; then
    SIZE="80x80"
    INPUT=${1}
    OUTPUT=${2}
elif [ $# -eq 3 ]; then
    SIZE=${1}
    INPUT=${2}
    OUTPUT=${3}
fi

convert -resize $SIZE -flip $INPUT -define bmp:subtype=RGB565 /tmp/565.bmp
echo $(file /tmp/565.bmp | grep -Eo "[[:digit:]]+ *x *[[:digit:]]+")
hexdump -s138 -v -e '16/2 "0x%02x, " "\n"' /tmp/565.bmp > $OUTPUT