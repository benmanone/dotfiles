#!/bin/sh

time=$(/home/void/.cargo/bin/heliocron poll | grep "Day")
echo $time > /home/void/log.txt

if [ -n $time ]; then
    wal -n -l -i /home/void/wall6.jpg
    sed -i 's/\"rose_pine\"/\"rose_pine_dawn\"/g' /home/void/.config/helix/config.toml
else
    wal -n -i /home/void/wall6.jpg
    sed -i 's/\"rose_pine_dawn\"/\"rose_pine\"/g' /home/void/.config/helix/config.toml
fi

/home/void/.local/bin/polybar.sh
