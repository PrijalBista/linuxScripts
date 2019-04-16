#! /bin/bash
echo fixing the gpg error on kali linux by installing new kali-archive-keyring
cd /home/$USER/Downloads
wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
sudo apt install ./kali-archive-keyring_2018.1_all.deb
echo ...........................................................
