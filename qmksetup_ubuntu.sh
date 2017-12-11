#!/bin/sh
# Install QMK Firmware Tools 
#
# Script used by merlin of www.youtube.com/mechmerlin to easily setup an environment 
# for QMK firmware tools in ubuntu or other debian system
#
# Intended User: A person new to the community or QMK with little to no programming
#                experience seeking to just get this setup. 
#
# To execute: save and type `chmod +x ./qmksetup_ubuntu.sh` then `./qmksetup_ubuntu.sh`
#
# Example:
#       you@somecomputer: chmod +x ./qmksetup_ubuntu.sh
#       you@somecomputer: ./qmksetup_ubuntu.sh

#Git
echo "Installing Git..."
sudo apt-get update
sudo apt-get install git

#Clone QMK Firmware from Master - It is recommended to fork the repo and then clone from your fork
echo "Cloning qmk_firmware from Github..."
git clone https://github.com/qmk/qmk_firmware.git

#Install Dependencies
echo "Installing Dependencies..."
cd qmk_firmware
sudo util/install_depedencies.sh
cd ..

echo "Congratulations! You are ready to use QMK!"
echo "Please visit https://docs.qmk.fm"
