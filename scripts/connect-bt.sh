#!//bin/bash

#connect to HD4.40BT Headphones

device="00:16:94:44:C7:E6"

if bluetoothctl info "$device" | grep 'Connected: yes' -q; then
  bluetoothctl disconnect "$device"
else
  bluetoothctl connect "$device"
fi
