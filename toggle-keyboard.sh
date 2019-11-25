#!/bin/bash
#
# Quickly switch between a given keyboard layout and the US Qwerty one

OTHER_LAYOUT="sk"
CURRENT="$(setxkbmap -query | grep layout | awk '/layout/{print $2}')"
 
if [ "$CURRENT" = "us" ] ; then
   setxkbmap -layout "$OTHER_LAYOUT" -variant qwerty
else
    setxkbmap -layout us
fi
