#!/bin/bash



# Move to workspace 4
i3-msg workspace 4

# Open texstudio with homework
texstudio /home/midas/Wiskunde/$1/$1_$2/$1_$2.tex
