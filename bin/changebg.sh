#!/bin/bash

ws=$(xprop -root _NET_CURRENT_DESKTOP | cut -d "=" -f2 | sed "s/ //g")

wallpaper_dir="${HOME}/.fluxbox/backgrounds"
mywall_dir="${HOME}/.fluxbox/my_backgrounds"

wallpaper[0]="$wallpaper_dir/karma.jpg"
wallpaper[1]="$mywall_dir/melissa3.jpg"
wallpaper[2]="$mywall_dir/melissa_panela.jpg"
wallpaper[3]="$myall_dir/niverMel.jpg"
wallpaper[4]="$mywall_dir/foto.jpg"
wallpaper[5]="$mywall_dir/familia.jpg"
wallpaper[6]="$mywall_dir/tkd.jpg"
wallpaper[7]="$mywall_dir/melissa2.jpg"

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
