#!/bin/bash

for wallpaper in ~/Wallpapers/active_wallpapers/*.png ~/Wallpapers/active_wallpapers/*.jpg
do
    swww img $wallpaper --transition-type none
    echo "Viewing $wallpaper"
    read
done