#!/bin/bash

info=$(glxinfo | grep "OpenGL renderer")

if [[ "$info" == *Intel* ]]; then
	echo "Intel"
fi
