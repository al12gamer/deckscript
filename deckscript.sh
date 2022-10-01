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
echo "Now we'll install and update terminal programs along with flatpak apps"
sudo steamos-readonly disable
flatpak update --appstream
flatpak update -y
flatpak install codium boxes lutris pupgui2
sudo pacman-key --refresh-keys
sudo pacman -Sy archlinux-keyring && pacman -Su
echo '
[multilib]
Include = /etc/pacman.d/mirrorlist' | sudo tee --append /etc/pacman.conf
sudo pacman --noconfirm -Syyu git go base-devel lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader neofetch vim 
flatpak install brave
## oh yeah let's now add btop++ if we can
wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-x86_64-linux-musl.tbz
sudo tar xf btop.tbz -C /usr/local bin/btop
## should be done at this point, but might need furher tweaking
