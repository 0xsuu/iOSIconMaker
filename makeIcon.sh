#!/bin/bash

if [ "$1"x = ""x ]; then

echo "#Error: Please input your png file name (no postfix)"
exit 0

fi

if [ ! -f "./$1.png" ];  then

echo "#Error: No $1.png or cannot access $1.png"
exit 0

fi

cp $1.png $1_512.png
sips -Z 512 $1_512.png >/dev/null 2>&1
echo "[+] $1_512.png generated"

cp $1.png $1_144.png
sips -Z 144 $1_144.png >/dev/null 2>&1
echo "[+] $1_144.png generated"

cp $1.png $1_114.png
sips -Z 114 $1_114.png >/dev/null 2>&1
echo "[+] $1_114.png generated"

cp $1.png $1_72.png
sips -Z 72 $1_72.png >/dev/null 2>&1
echo "[+] $1_72.png generated"

cp $1.png $1_56.png
sips -Z 56 $1_56.png >/dev/null 2>&1
echo "[+] $1_56.png generated"

