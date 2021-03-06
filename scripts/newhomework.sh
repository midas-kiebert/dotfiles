#!/bin/bash

# Select homework with dmenu
vak=$(ls /home/midas/Wiskunde | rofi -i -p Vak -dmenu)

if [ -z "$vak" ]; then
  exit 0
fi

week=$(rofi -dmenu -p Week)

if [ -z "$week" ]; then
  exit 0
fi

# Create Directory if necessary
if [ ! -d /home/midas/Wiskunde/$vak/"$vak"_$week ]; then
  mkdir -p /home/midas/Wiskunde/$vak/"$vak"_$week;
fi

# Move to workspace 4
i3-msg workspace 4

# Open texstudio with homework
touch /home/midas/Wiskunde/$vak/"$vak"_$week/"$vak"_$week.tex
texstudio /home/midas/Wiskunde/$vak/"$vak"_$week/"$vak"_$week.tex
