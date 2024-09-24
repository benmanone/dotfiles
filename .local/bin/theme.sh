#!/bin/sh

day=$(/home/void/.cargo/bin/heliocron poll | grep "Day")

if [ $day = "Day" ]; then
    wal -n -l -i /home/void/wall6.jpg
    sed -i 's/\"rose_pine\"/\"rose_pine_dawn\"/g' /home/void/.config/helix/config.toml
    gsettings set org.gnome.desktop.interface color-scheme \'prefer-light\'
else
    wal -n -i /home/void/wall6.jpg
    sed -i 's/\"rose_pine_dawn\"/\"rose_pine\"/g' /home/void/.config/helix/config.toml
    gsettings set org.gnome.desktop.interface color-scheme \'prefer-dark\'
fi

/home/void/.local/bin/polybar.sh
