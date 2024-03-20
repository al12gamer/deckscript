#!/bin/sh
echo "HELLO! Welcome to the Script!"
echo ********************************
echo ********************************
## First let's change that password
echo ********************************
echo "Please change your Deck admin password if you haven't already, otherwise this may not work"
echo "You can change the admin password by typing passwd and hitting enter in your Konsole terminal"
echo ********************************
sleep 4
cd
## Install the previously pacman packages through Nix - install Nix package manager first
echo ********************************
echo "Now we'll install the Nix package manager and grab some programs immutably"
echo ********************************
sleep 4
## chown nix directory so deck user can access it, then run single user nix installer
sudo chown deck:deck /nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon
cd
nix-env --install nixpkgs.brave nixpkgs.vscodium nixpkgs.gnome.gnome-boxes nixpkgs.btop nixpkgs.fastfetch
cd
flatpak update --appstream
flatpak update -y
flatpak install -y pupgui2 dolphin com.github.zocker_160.SyncThingy net.veloren.airshipper org.mozilla.firefox lutris
## pull most recent Retroarch cores, if you have retroarch installed
cd
cd Desktop
wget https://github.com/icculus/twisty-little-utilities/blob/main/steamdeck-retroarch-download-all-cores.sh
chmod +x steamdeck-retroarch-download-all-cores.sh
echo "If you had Retroarch installed via Steam, feel free to run the download-all-cores file on your desktop in the future"
sleep 2
cd
## git clone the pi webcam directory to desktop, for reference point when installing pi webcam stuff
# git clone https://github.com/geerlingguy/pi-webcam.git
## Make sure the CryoUtilities and Decky installers are ready to go
cd Desktop
wget --content-disposition https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/InstallCryoUtilities.desktop
wget --content-disposition https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/decky_installer.desktop
chmod +x InstallCryoUtilities.desktop
chmod +x decky_installer.desktop
cd
echo "The most recent CryoUtilities installer and Decky Loader installer will now be on your desktop. Install them after a reboot by double-clicking them and running through the scripts one at a time"
sleep 4
echo "If you would like to download Ship of Harkinian, a comprehensive Ocarina of Time mod, run SoH.sh from the deckscript folder after a reboot. It will open Firefox to their download page for their newest release."
sleep 4
## emudeck
cd
cd Desktop
wget https://www.emudeck.com/EmuDeck.desktop
echo "EmuDeck's installer has been also downloaded to the desktop"
sleep 4
## should be done at this point, but might need furher tweaking depending on what you want to install
cd
sleep 2
echo "If you would like to install the Suyu continuation of the Yuzu Switch emulator, we'll open the site to that now, otherwise feel free to hit CTRL + C and reboot!"
firefox https://suyu.dev/
exit
