#!/bin/bash

ws=$(xprop -root _NET_CURRENT_DESKTOP | cut -d "=" -f2 | sed "s/ //g")

wallpaper_dir="${HOME}/.fluxbox/backgrounds"
mywall_dir="${HOME}/.fluxbox/my_backgrounds"

wallpaper[0]="$wallpaper_dir/karma.jpg"
wallpaper[1]="$my_wall_dir/melissa3.jpg"
wallpaper[2]="$my_wall_dir/melissa_panela.jpg"
wallpaper[3]="$my_wall_dir/niverMel.jpg"
wallpaper[4]="$my_wall_dir/foto.jpg"
wallpaper[5]="$my_wall_dir/familia.jpg"
wallpaper[6]="$my_wall_dir/tkd.jpg"
wallpaper[7]="$my_wall_dir/melissa2.jpg"

options[1]="-a"
options[2]="-a"
options[3]="-a"
options[4]="-a"
options[5]="-a"
options[6]="-a"

wall="${wallpaper[$ws]}"
opt="${options[$ws]}"

fbsetbg $opt $wall

xrefresh
