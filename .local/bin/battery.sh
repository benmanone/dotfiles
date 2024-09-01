#!/bin/sh

POWERSUPPLY="/sys/class/power_supply/BAT1/status" # could be different on your system!
TOO_LOW=20 # how low is too low?
NOT_CHARGING="Discharging"

export DISPLAY=:0

BATTERY_LEVEL="/sys/class/power_supply/BAT1/capacity"
PERCENTAGE=$(cat $BATTERY_LEVEL)

STATUS=$(cat $POWERSUPPLY)

if [ $PERCENTAGE -le $TOO_LOW -a $STATUS = $NOT_CHARGING ]
then
    /usr/bin/notify-send -u critical -i "$ICON" -t 3000 "Battery low" "Battery level is ${PERCENTAGE}%!"
fi

exit 0
