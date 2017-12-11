#!/bin/sh
# Install QMK Firmware Tools using Homebrew
#
# Script used by merlin36 of www.youtube.com/mechmerlin to easily setup an environment 
# for QMK firmware tools in macOS.
#
# This installs Homebrew, Git, a text editor if you uncomment it, packages needed for
# qmk_firmware, and finally clones the qmk_firmware repo from GitHub. This process 
# takes awhile. 
#
# Intended User: A person new to the community or QMK with little to no programming
#                experience seeking to just get this setup. 
#
# To execute: save and type `chmod +x ./qmksetup_macos.sh` then `./qmksetup_macos.sh`
#
# Example:
#       you@someapplecomputer: chmod +x ./qmksetup_macos.sh
#       you@someapplecomputer: ./qmksetup_macos.sh

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

#Dev Tools
echo "Installing QMK SW Development Tools..."
brew install git
#Uncomment your favorite editor or use your own!
    #brew cask install emacs
    #brew cask install macvim
    #brew cask install visual-studio-code

#QMK Firmware Environment Setup on macOS
echo "Installing QMK Keyboard Firmware Tools..."
brew tap osx-cross/avr
brew tap PX4/homebrew-px4
brew update
brew install avr-gcc
brew install dfu-programmer
brew install gcc-arm-none-eabi

#Clone QMK Firmware from Master - It is recommended to fork the repo and then clone from your fork
echo "Cloning qmk_firmware from Github..."
git clone https://github.com/qmk/qmk_firmware.git


echo "Congratulations! You are ready to use QMK!"
echo "Please visit https://docs.qmk.fm"
