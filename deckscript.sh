#!/bin/sh
echo "HELLO! Welcome to the Script!"
echo ********************************
echo ********************************
## First let's change that password
echo ********************************
echo "Please change your Deck admin password if you haven't already, otherwise this may not work"
echo ********************************
sleep 3
echo "Installing a cpu auto scheduler"
mkdir cpufreq
cd cpufreq
wget https://github.com/TheRealAlexV/steamdeck-scripts/blob/main/functions/auto-cpufreq.sh
bash auto-cpufreq.sh
cd
## Install the previously pacman packages through Nix - install Nix package manager first
echo ********************************
echo "Now we'll install the Nix package manager and grab some programs"
echo ********************************
sleep 4
sh <(curl -L https://nixos.org/nix/install) --no-daemon
nix-env -iA nixpkgs.firefox nixpkgs.brave nixpkgs.vscodium nixpkgs.gnome.gnome-boxes nixpkgs.btop nixos.jotta-cli
cd
flatpak update --appstream
flatpak update -y
flatpak install -y pupgui2 yuzu dolphin
## pull most recent Retroarch cores, if you have retroarch installed
cd
cd Desktop
wget https://github.com/icculus/twisty-little-utilities/blob/main/steamdeck-retroarch-download-all-cores.sh
bash steamdeck-retroarch-download-all-cores.sh
echo "If you had retroarch installed via Steam, all the cores are now updated"
sleep 2
cd
## git clone the pi webcam directory to desktop, for reference point when installing pi webcam stuff
git clone https://github.com/geerlingguy/pi-webcam.git
## Make sure the CryoUtilities and Decky installers are ready to go
cd Desktop
wget --content-disposition https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/InstallCryoUtilities.desktop
wget --content-disposition https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/decky_installer.desktop
chmod +x InstallCryoUtilities.desktop
chmod +x decky_installer.desktop
cd
echo "The most recent CryoUtilities installer and Decky Loader installer will now be on your desktop. Install them after a reboot by double-clicking them and running through the scripts one at a time"
sleep 4
echo "If you would like to download Ship of Harkinian, a comprehensive Ocarina of Time mod, run SoH.sh from the deckscript folder after a reboot."
sleep 4
## should be done at this point, but might need furher tweaking depending on what you want to install
cd
sleep 2
echo "Good to go, reboot when ready!"
