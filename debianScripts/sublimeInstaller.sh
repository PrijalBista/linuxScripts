#! /bin/bash
echo Sublime 3 installer custom script
cd /home/$USER/Downloads
echo downloading sublime dev package to `pwd`
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3047_amd64.deb
echo installing using dpkg enter ur password
sudo dpkg -i sublime-text_build-3047_amd64.deb
echo ............................................................
