#!/bin/bash

boek=$(ls /home/midas/Boeken | rofi -dmenu -i -p Boek:)

if [ -z "$boek" ]; then
  exit 0
fi

i3-msg workspace 2

xdg-open /home/midas/Boeken/"$boek"
