# Deck Script For Working via Steam Deck
This script will install various Nix packages and flatpaks for the system, as well as enable a cpu scheduler that may improve battery life. Note that this script was made from Desktop Mode on my personal Steam Deck plugged into a NexDock Touch, and also docked to the official Steam Deck Dock.
It is recommended to restart after the script finishes, then boot back into Desktop Mode and run any installers that the script mentioned that it put on your Desktop...if you're interested in those.

This script now assumes you're running a version of SteamOS with the `/nix` directory included by default. This means SteamOS 3.5.5 or newer.

## Usage
First, boot into Desktop Mode. Next, let's open up the Konsole from the Steam Deck application menu with the D symbol at the bottom left of Desktop mode's desktop. Then paste these commands one line at a time to run the script:
```
git clone https://github.com/al12gamer/deckscript.git
cd deckscript
bash deckscript.sh
```
If you would like to grab the prerequisites to play the Ship of Harkinian upgrades to Ocarina of Time, run the following commands one line at a time:
```
cd deckscript
bash SoH.sh
```
If you would like to play Battlefield 2142 on your Deck via the Lutris installer and want to make sure you get the proper files:
```
cd deckscript
bash bf2142.sh
lutris
```
Be sure to hit enter after pasting each line.
## Programs Installed
This Script will install the following programs:
+ Package managers: Nix, Flatpak
+ Flatpaks: Protonup-QT, Lutris, Dolphin, SyncThingy
+ Nix Packages: fastfetch, Brave, Element messenger, Firefox, VSCodium, btop
+ Add-ons: [Retroarch Core Downloader](https://github.com/icculus/twisty-little-utilities/blob/main/steamdeck-retroarch-download-all-cores.sh), [CryoUtilities](https://github.com/CryoByte33/steam-deck-utilities), [Decky Loader](https://github.com/SteamDeckHomebrew/decky-loader), [Pi webcam scripts](https://github.com/geerlingguy/pi-webcam), [Prerequisites for Playing Ship of Harkinian mod](https://github.com/al12gamer/deckscript/issues/12), [EmuDeck Installer](https://emudeck.github.io/)
## Issues?
If you have any problems with this script or any suggestions, feel free to [open an issue here](https://github.com/al12gamer/deckscript/issues)
