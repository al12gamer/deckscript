# Deck Script For Working via Steam Deck
This script will install some dev programs and temporarily disable the read-only filesystem so that you can work with terminal development tools. Note that this script was made from Desktop Mode on my personal Steam Deck plugged into a NexDock Touch. Alongside installed programs to make the deck favorable to a dev/work environment when docked, this script may evolve over time to become interactive for other functionality as well.
It is recommended to restart after the script finishes, then boot back into Desktop Mode and install [Decky Loader](https://github.com/SteamDeckHomebrew/decky-loader).

## Usage
First, let's open up the Konsole from the Steam Deck application menu at the bottom left of Desktop mode. Then paste these commands to run the script:
```
git clone https://github.com/al12gamer/deckscript.git
cd deckscript
bash deckscript.sh
```
## Programs Installed
This Script will install the following programs:
yay, fastfetch, Boxes (flatpak), vim, neofetch, btop++ (from git), Lutris (flatpak), base development packages, Brave browser (flatpak), Protonup-Qt (flatpak)
