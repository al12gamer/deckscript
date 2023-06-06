#!/bin/sh
echo "HELLO! Welcome to the Script!"
echo ********************************
echo ********************************
echo "Now to install some things..." 
## First let's change that password
echo ********************************
echo "Please change your Deck admin password if you haven't already, otherwise this won't work"
echo ********************************
sleep 3
## Install multilib stuff and disable readonly filesystem
echo ********************************
echo "Now we'll install and update terminal programs along with flatpak apps"
echo ********************************
sleep 5
sudo steamos-readonly disable
flatpak update --appstream
flatpak update -y
flatpak install -y codium boxes lutris pupgui2 brave firefox
## also grab yuzu and dolphin
flatpak install -y yuzu dolphin
## pupgui2 is protonup-qt, also we may need to initialize pacman keys here as that helped on my deck running SteamOS 3.4.6
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo locale-gen
sudo pacman -Sy archlinux-keyring && pacman -Su
sudo pacman --noconfirm -Syyu git go base-devel lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader neofetch vim cmake glibc ansible python3-pip 
## install yay for an AUR helper, also grab btop
cd
sudo pacman --noconfirm -S cmake pkg-config glibc gcc libarchive linux-api-headers ansible vim-ansible ansible-core
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S --noconfirm btop-git
## also install jotta-cli from aur to backup and sync certain things - for example I've added my Switch keys to the sync folder
yay -S --noconfirm jotta-cli
## pull most recent Retroarch cores, if you have retroarch installed
cd
cd Desktop
wget https://github.com/icculus/twisty-little-utilities/blob/main/steamdeck-retroarch-download-all-cores.sh
bash steamdeck-retroarch-download-all-cores.sh
echo "If you had retroarch installed via Steam, all the cores are now updated"
sleep 2
cd
cd Desktop
wget --content-disposition https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/InstallCryoUtilities.desktop
wget --content-disposition https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/decky_installer.desktop
chmod +x InstallCryoUtilities.desktop
chmod +x decky_installer.desktop
cd
echo "The most recent CryoUtilities installer and Decky Loader installer will now be on your desktop. Install them after a reboot by double-clicking them and running through the scripts one at a time"
sleep 4
## should be done at this point, but might need furher tweaking depending on what you want to install
cd
sudo steamos-readonly enable
sleep 2
echo "Good to go, reboot when ready!"
