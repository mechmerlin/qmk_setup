# qmk_setup

## Introduction
qmk_setup aims to provide tools and information to assist in the understanding and usage of QMK. These are primarily
my notes I've been using for reference to help people online. 

## Environment Setup: Making your keymap without a GUI - "coding"
The scripts here currently only cover [macOS](https://github.com/mechmerlin/qmk_setup/blob/master/qmksetup_macos.sh) and [ubuntu](https://github.com/mechmerlin/qmk_setup/blob/master/qmksetup_ubuntu.sh). 

## QMK Toolbox

QMK Toolbox is recommended for those using Windows. 

### Windows

1. Download the latest version of [qmk_driver_installer](https://github.com/qmk/qmk_driver_installer/releases).
2. Unzip the file, and double click on install_all_drivers.bat script. Let the process finish.
3. Download the latest [QMK Toolbox](https://github.com/qmk/qmk_toolbox/releases). I suggest just getting the qmk_toolbox.exe.
4. Generate a .hex file using [QMK Configurator](https://config.qmk.fm/#/1up60rgb/KEYMAP) or by editing the appropriate keymap.c
files for your keyboard. 
5. Using QMK Toolbox, open the saved .hex, physically reset your keyboard, and then press flash. 

### macOS

1. Install [Homebrew](https://brew.sh/).
2. Open a terminal and run:
```
brew cask install caskroom/drivers/qmk-toolbox
```
3. Download the latest [QMK Toolbox](https://github.com/qmk/qmk_toolbox/releases). 
4. Generate a .hex file using [QMK Configurator](https://config.qmk.fm/#/1up60rgb/KEYMAP) or by editing the appropriate keymap.c
files for your keyboard. 
5. Using QMK Toolbox, open the saved .hex, physically reset your keyboard, and then press flash. 


## QMK Git Hygiene
[QMK Git Documentation](https://github.com/mechmerlin/qmk_setup/blob/master/qmk_git.md)


