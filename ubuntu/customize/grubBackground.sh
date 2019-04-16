#! /bin/bash

echo "Tutorial about changing grub2 background"
echo "https://help.ubuntu.com/community/Grub2/Displays"

echo "Current grub version is : "
grub-install --version

echo "This will only work for grub 2 continue only if thats the case"

read -p "Continue ? [y/n]: " choice
if [ $choice != "y" ]
then
	exit

fi
echo "continuing the install ..........."

echo "Downloading Grub 2 compatible images "

sudo apt-get install grub2-splashimages

echo "Download Complete .... Images can be found in the location /usr/share/images/grub"

echo "Now follow these steps manually :D lwal"
echo "Method 1"
echo "copy the image u want to the /boot/grub folder"
echo "Then update grub 2 using cmd sudo update-grub"

echo "Method 2"
echo "Open /etc/default/grub with a text editor."
echo "Example: GRUB_BACKGROUND="~/Pictures/grubbackround.png"


