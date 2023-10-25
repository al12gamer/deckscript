#!/bin/bash
cd
echo "Creating an SoH folder for you, and adding the required ROMS to it from Archive.org"
sleep 2
mkdir SoH
cd SoH
wget https://archive.org/download/ship-of-harkinian/ZELOOTD.zip
unzip ZELOOTD.zip
cd
echo "Finished, your files are in the SoH folder."
sleep 2
echo "...if you would like to download Ship of Harkinian, we will now open up their web page so you can join their discord"
sleep 4
firefox https://github.com/HarbourMasters/Shipwright/releases/
