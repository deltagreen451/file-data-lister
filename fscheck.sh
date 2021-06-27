#!/bin/bash

getprop () { #function to get file properties 
sz="$(du -b $fnm | awk '{adj=$1/1024; printf "%.2f\n", adj}')" #gets size of file from $fnm
wd="$(wc -w $fnm | awk '{print $1}')" #gets word count of file from $fnm
dd="$(date -r $fnm | awk '{print $2}')" #gets date of file from $fnm
mmm="$(date -r $fnm | awk '{print $3}')" #gets month of files from $fnm
yy="$(date -r $fnm | awk '{print $4}')" #gets year of file from $fnm
tt="$(date -r $fnm | awk '{print $5}')" #gets time of file from $fnm

case $mmm in #converts $mm from letters to numbers 
Jan) mm="01";;
Feb) mm="02";;
Mar) mm="03";;
Apr) mm="04";;
May) mm="05";;
Jun) mm="06";;
Jul) mm="07";;
Aug) mm="08";;
Sep) mm="09";;
Oct) mm="10";;
Nov) mm="11";;
Dec) mm="12";;
esac
}

read -p "Please enter filename to check: " fnm #gets user to enter filename to check
getprop $fnm
echo -e "The file $fnm contains $wd words and is $sz\bK in size and was last modified $dd-$mm-$yy $tt" #displays the required information 

exit 0