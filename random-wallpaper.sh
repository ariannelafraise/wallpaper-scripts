#!/bin/bash
script_dir=~/personal_dev/wallpaper-scripts
randomWallpaper=$(ls ~/Wallpapers/active_wallpapers/*.png ~/Wallpapers/active_wallpapers/*.jpg | sort -R | tail -1)

while [ "$randomWallpaper" = $(cat $script_dir/lastwallpaper) ]
do
    randomWallpaper=$(ls ~/Wallpapers/active_wallpapers/*.png ~/Wallpapers/active_wallpapers/*.jpg | sort -R | tail -1)
done

echo -n "$randomWallpaper" > $script_dir/lastwallpaper

if [ "$1" = "startup" ]
then
    randomArchWallpaper=$(ls ~/Wallpapers/arch_wallpapers/*.png ~/Wallpapers/arch_wallpapers/*.jpg | sort -R | tail -1)
    swww img $randomArchWallpaper --transition-type none && sleep 0.2 && swww img $randomWallpaper --transition-type wipe --transition-fps 200 --transition-duration 4
else
    swww img $randomWallpaper --transition-type wipe --transition-fps 255 --transition-duration 1.5
fi
