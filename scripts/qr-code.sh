#!//bin/bash

#Display QR-Code of clipboard in feh

qrencode -s 6 -l H -o "QRCODE.png" "$(xsel -ob)" && feh QRCODE.png & sleep 2 ; rm QRCODE.png
