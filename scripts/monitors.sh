while true
do
    if [ $(xrandr --listmonitors | grep Monitors) == "Monitors: 1" ]
    then
        xrandr --output DP-2 --off
        polybar-msg cmd restart
    fi
done
