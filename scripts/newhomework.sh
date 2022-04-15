#!/bin/bash

# Select homework with dmenu
vak=$(ls /home/midas/Wiskunde | dmenu)

if [ -z "$vak" ]; then
  exit 0
fi

week=$(echo -n | dmenu)

if [ -z "$week" ]; then
  exit 0
fi

# Create Directory if necessary
if [ ! -d /home/midas/Wiskunde/$vak/"$vak"_$week ]; then
  mkdir -p /home/midas/Wiskunde/$vak/"$vak"_$week;
fi

# Move to workspace 4
i3-msg workspace 4

echo /home/midas/Wiskunde/$vak/"$vak"_$week/"$vak"_$week.tex
# Open texstudio with homework
texstudio /home/midas/Wiskunde/$vak/"$vak"_$week/"$vak"_$week.tex
