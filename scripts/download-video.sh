#!//bin/bash

#Download video on current tab

#Copy Current URL:

xdotool search "Navigator" key --clearmodifiers F6 ctrl+c F6

#Download Video:

yt-dlp -f best -ci --no-playlist --max-downloads 1 -o "/home/midas/Videos/%(title)s.%(ext)s" "$(xsel -ob)"
