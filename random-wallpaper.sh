#!/bin/bash
randomWallpaper=$(ls ~/Wallpapers/active_wallpapers/*.png ~/Wallpapers/active_wallpapers/*.jpg | sort -R | tail -1)

if [ "$1" = "startup" ]
then
    randomArchWallpaper=$(ls ~/Wallpapers/arch_wallpapers/*.png ~/Wallpapers/arch_wallpapers/*.jpg | sort -R | tail -1)
    swww img $randomArchWallpaper --transition-type none && sleep 0.2 && swww img $randomWallpaper --transition-type wipe --transition-fps 200
else
    swww img $randomWallpaper --transition-type wipe --transition-fps 255
fi
