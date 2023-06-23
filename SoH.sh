#!/bin/bash
cd
echo "Creating an SoH folder for you, and adding the required ROMS to it from Archive.org"
sleep 2
mkdir SoH
cd SoH
wget https://archive.org/download/ship-of-harkinian/ZELOOTD.zip
unzip ZELOOTD.zip
cd
echo "Finished"
sleep 2
