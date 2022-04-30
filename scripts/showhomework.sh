#!/bin/bash

# Select homework with dmenu
vak=$(ls /home/midas/Wiskunde | rofi -i -dmenu -p Vak)

if [ -z "$vak" ]; then
  exit 0
fi

week=$(echo -n | rofi -dmenu -p Week )

if [ -z "$week" ]; then
  exit 0
fi

# if doesnt exist
if [ ! -d /home/midas/Wiskunde/$vak/"$vak"_$week ]; then
  exit 0
fi

# Move to workspace 2
i3-msg workspace 2

# Open firefox with homework
xdg-open /home/midas/Wiskunde/$vak/"$vak"_$week/"$vak"_$week.pdf

