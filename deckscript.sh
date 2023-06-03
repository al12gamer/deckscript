#!/bin/sh
echo "HELLO! Welcome to the Script!"
echo ********************************
echo ********************************
echo "Now to install some things..." 
## First let's change that password
echo ********************************
echo "Please change your Deck admin password"
echo ********************************
passwd
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
sudo pacman --noconfirm -Syyu git go base-devel lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader neofetch vim cmake glibc
## oh yeah let's now add btop++ if we can
wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-x86_64-linux-musl.tbz
sudo tar xf btop.tbz -C /usr/local bin/btop
## install yay for an AUR helper, resolving header issues prior to install
cd
sudo pacman --noconfirm -S cmake pkg-config glibc gcc libarchive linux-api-headers
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
## pull most recent Retroarch cores, if you have retroarch installed
mkdir corescript
cd corescript
wget https://github.com/icculus/twisty-little-utilities/blob/main/steamdeck-retroarch-download-all-cores.sh
bash steamdeck-retroarch-download-all-cores.sh
echo "If you had retroarch installed via Steam, all the cores are now updated"
sleep 2
## should be done at this point, but might need furher tweaking depending on what you want to install
cd
sudo steamos-readonly enable
sleep 2
echo "good to go, let's reboot!"
