#!/bin/bash

W3MIMGDISPLAY="/usr/lib64/w3m/w3mimgdisplay"
FONTH=15 # Size of one terminal row
FONTW=7 # Size of one terminal column

X=$1
Y=$2
COLUMNS=$3
LINES=$4

x=$((FONTW * X))
y=$((FONTH * Y))

erase="6;$x;$y;$(( FONTW*COLUMNS ));$(( FONTH*LINES ))\n3;"
echo -e "$erase" | $W3MIMGDISPLAY