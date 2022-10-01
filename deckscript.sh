#!/bin/sh
echo "HELLO! Welcome to the Script!"
echo ********************************
echo ********************************
echo "Now to install some things..." 
## First let's change that password
echo "Please change your Deck admin password"
passwd
## Install multilib stuff and disable readonly filesystem
echo ****************************f****
echo "Now we'll install and update things"
sudo steamos-readonly disable
flatpak update --appstream
flatpak update -y
flatpak install codium boxes lutris pupgui2
sudo pacman-key --init
sudo pacman-key --refresh-keys
sudo pacman -Sy archlinux-keyring && pacman -Su
echo '
[multilib]
Include = /etc/pacman.d/mirrorlist' | sudo tee --append /etc/pacman.conf
sudo pacman --noconfirm -Syyu git go base-devel lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader neofetch vim 
flatpak install brave
## should be done at this point, but might need further tweaking
