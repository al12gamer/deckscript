# Deck Script For Working via Steam Deck
This script will install some dev programs and temporarily disable the read-only filesystem so that you can work with terminal development tools. Note that this script was made from Desktop Mode on my personal Steam Deck plugged into a NexDock Touch.
It is recommended to restart after the script finishes, then boot back into Desktop Mode and run any installers that the script mentioned that it put on your Desktop.

## Usage
First, boot into Desktop Mode. Next, let's open up the Konsole from the Steam Deck application menu at the bottom left of Desktop mode. Then paste these commands one line at a time to run the script:
```
git clone https://github.com/al12gamer/deckscript.git
cd deckscript
bash deckscript.sh
```
Be sure to hit enter after pasting each line.
## Programs Installed
This Script will install the following programs:
+ Package managers: yay
+ Flatpaks: Boxes, Brave, Protonup-QT, Codium, Lutris, Firefox, Dophin, Yuzu
+ Pacman Packages: vim, neofetch, btop++ (from aur), base devel packages, ansible, python3-pip 
+ Add-ons: [Retroarch Core Downloader](https://github.com/icculus/twisty-little-utilities/blob/main/steamdeck-retroarch-download-all-cores.sh), [CryoUtilities](https://github.com/CryoByte33/steam-deck-utilities), [Decky Loader](https://github.com/SteamDeckHomebrew/decky-loader), [Pi webcam scripts](https://github.com/geerlingguy/pi-webcam)
