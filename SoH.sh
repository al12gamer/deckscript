#!/bin/bash
cd
echo "Creating an SoH folder for you, and adding the required ROMS to it from Archive.org"
sleep 3
mkdir SoH
cd SoH
wget https://archive.org/download/ship-of-harkinian/ZELOOTD.zip
unzip ZELOOTD.zip
cd
echo "Finished, your files are in the SoH folder."
sleep 3
echo "Opening the Releases page for SoH"
sleep 1
firefox https://github.com/HarbourMasters/Shipwright/releases/
