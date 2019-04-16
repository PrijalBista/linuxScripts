#! /bin/bash

echo "Change ubuntu boot logo (splash screen) "

echo "goto https://askubuntu.com/questions/1046370/how-to-change-boot-splash-screen-in-18-04i"

echo "http://www.ashwinraon.in/changing-boot-splash-screen-in-ubuntu-18-04/"

echo "first install plymouth-themes tool with command "
echo "sudo apt update && sudo apt install plymouth-themes"

echo "
This will install the additional plymouth themes in Ubuntu. After the sucessfull installation of plymouth themes, you can browse the directory /usr/share/plymouth/themes/ and view the installed themes. If you wish additional themes, you can down load rthem from below links extract them and copy them to above location. The links are: 
Deviantart https://www.gnome-look.org/browse/cat/108/ord/latest/

gnome-look https://www.gnome-look.org/browse/cat/108/ord/latest/

Once done, use below mentioned command in terminal to make the desired new theme as default one

sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth
default.plymouth /usr/share/plymouth/themes/"path/to-your-plymouth.plymout \" 100


echo "\n  then For choosing the theme

sudo update-alternatives --config default.plymouth
sudo update-initramfs -u

To test without reboot do first install

sudo apt install plymouth-x11

then enter following cmd
sudo plymouthd ; sudo plymouth --show-splash ; for ((I=0; I<10; I++)); do sleep 1 ; sudo plymouth --update=test\$I ; done ; sudo plymouth --quit
"

echo "END"

