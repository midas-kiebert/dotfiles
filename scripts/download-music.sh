#!//bin/bash

#Download video on current tab as mp3

#Copy Current URL:

xdotool search "Navigator" key --clearmodifiers F6 ctrl+c F6

#Download Video:

yt-dlp -f bestaudio -ci --no-playlist --max-downloads 1 -o "/home/midas/Music/%(title)s" "$(xsel -ob)" --exec "ffmpeg -i {}  -codec:a libmp3lame -qscale:a 0 {}.mp3 && rm {} "
